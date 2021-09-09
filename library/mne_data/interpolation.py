import itertools
import logging

import numpy as np
import verde as vd
from scipy.interpolate import CloughTocher2DInterpolator, Rbf, interp2d
from scipy.spatial.qhull import Delaunay

LOG_FORMAT = ('%(levelname) -10s %(asctime)s %(name) -30s %(funcName) '
              '-35s %(lineno) -5d: %(message)s')
LOGGER = logging.getLogger(__name__)


class _GridData(object):
    """Unstructured (x,y) data interpolator.

    This class allows optimized interpolation by computing parameters
    for a fixed set of true points, and allowing the values at those points
    to be set independently.
    """

    def __init__(self, pos):

        # in principle this works in N dimensions, not just 2
        assert pos.ndim == 2 and pos.shape[1] == 2
        # Adding points outside the extremes helps the interpolators
        extremes = np.array([pos.min(axis=0), pos.max(axis=0)])
        diffs = extremes[1] - extremes[0]
        extremes[0] -= diffs
        extremes[1] += diffs
        eidx = np.array(list(itertools.product(
            *([[0] * (pos.shape[1] - 1) + [1]] * pos.shape[1]))))
        pidx = np.tile(np.arange(pos.shape[1])[np.newaxis], (len(eidx), 1))
        self.n_extra = pidx.shape[0]  # +4
        outer_pts = extremes[eidx, pidx]
        outer_pts2 = [[0, -0.6],
                      [0, 0.6],
                      [0.57, 0],
                      [-0.57, 0],
                      [-0.57, -0.6],
                      [-0.57, 0.6],
                      [0.57, -0.6],
                      [0.57, 0.6]]
        pos = np.concatenate((pos, outer_pts))
        self.pos = (pos[:, 0], pos[:, 1])

        self._tmp = pos
        self.tri = Delaunay(pos)
        self.avg_value = None

    def set_values(self, v, kind='cubic'):
        """Set the values at interpolation points."""
        # Rbf with thin-plate is what we used to use, but it's slower and
        # looks about the same:
        #
        #     zi = Rbf(x, y, v, function='multiquadric', smooth=0)(xi, yi)
        #
        # Eventually we could also do set_values with this class if we want,
        # see scipy/interpolate/rbf.py, especially the self.nodes one-liner.

        v = np.concatenate((v, np.zeros(self.n_extra)))

        tri = Delaunay(self._tmp)
        self.interpolator = CloughTocher2DInterpolator(tri, v)
        tri.close()

        self.rbfi = Rbf(self.pos[0], self.pos[1], v, epsilon=0.29, function="linear")
        self.spline = vd.Spline(mindist=1e-4)  # in localhost verde old version mindist = fudge. fudge=1e-4)
        self.interp2d = interp2d(self.pos[0], self.pos[1], v, kind=kind, fill_value=0)
        self.coef, self.defined_xy = coef_bih_spline(self.pos[0], self.pos[1], v)
        v = (v, v)
        self.spline.fit(self.pos, v[0])
        return self

    def set_locations(self, Xi, Yi):
        """Set locations for easier (delayed) calling."""
        self.Xi = Xi
        self.Yi = Yi
        return self

    def __call__(self, interp="spline", specs_bool=None, *args):
        """Evaluate the interpolator."""
        if len(args) == 0:
            args = (self.Xi, self.Yi)
        if interp == "spline":
            return self.spline.predict(args)
        elif interp == "cloughTocher":
            return self.interpolator(*args)
        elif interp == "rbf":
            temp2 = self.rbfi(args[0], args[1])
            if specs_bool:
                temp = np.full((len(args[0]), len(args[0][0])), self.avg_value)
                new_args_indices = []
                for i in range(len(args[0])):
                    for j in range(len(args[0][i])):
                        pos_x, pos_y = args[0][i][j], args[1][i][j]
                        for ind in range(len(specs_bool)):
                            df_pos_x, df_pos_y = self.pos[0][ind], self.pos[1][ind]
                            if (pos_x - df_pos_x) ** 2 + (pos_y - df_pos_y) ** 2 < 0.2 ** 2:
                                if specs_bool[ind]:
                                    new_args_indices.append((i, j))
                for i in range(len(new_args_indices)):
                    temp[new_args_indices[i][0], new_args_indices[i][1]] = temp2[
                        new_args_indices[i][0], new_args_indices[i][1]]
            else:
                temp = temp2
            return temp
        elif interp == "interp2d":
            from scipy.interpolate import fitpack
            self.interp2d.tck = fitpack.bisplrep(self.interp2d.x, self.interp2d.y, self.interp2d.z, kx=3, ky=3, s=13)
            return self.interp2d(args[0], args[1], dx=0, dy=0)
        elif interp == "bih_spline":
            import pandas as pd
            Zi = pd.read_csv("/home/yerzhan/Desktop/Mind_report/Mind_report/mne_data/Zi.csv", header=None)
            return Zi.values


def green_fun(x, x1):
    import math
    if x == x1:
        return 0
    return (math.log(abs(x - x1)) - 1) * ((abs(x - x1)) ** 2)


def weight_fun(x, xi, coef):
    matrix = []
    for value in xi:
        matrix.append(green_fun(x, value))
    return np.dot(matrix, coef)


def coef_bih_spline(x, y, w):
    # convert to sqrt(x^2+y^2)
    if x.shape != y.shape or y.shape != w.shape:
        raise ValueError("Shapes are not same of x, y, w")
    new_x = np.sqrt(np.add(np.square(x), np.square(y)))
    # create matrix using Green's function
    matrix = []
    for i in new_x:
        new_row = []
        for is_last, j in enumerate(new_x):
            new_row.append(green_fun(i, j))
            if is_last == len(new_x) - 1:
                matrix.append(new_row)
    matrix = np.array(matrix)
    # calculate coefs
    sol, res, rank, s = np.linalg.lstsq(matrix, w, rcond=None)
    return sol, new_x


def bih_spline(x, y, coef, xy):
    # convert to sqrt(x^2+y^2) each
    matrix = np.sqrt(np.add(np.square(x), np.square(y)))
    # calculate weight using green function for each element of matrix
    for i in matrix:
        for j in i:
            j = weight_fun(j, xy, coef)
    return matrix
