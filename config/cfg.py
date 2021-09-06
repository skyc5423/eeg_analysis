from yacs.config import CfgNode
import os

from iopath.common.file_io import PathManagerFactory

pathmgr = PathManagerFactory.get()
_C = CfgNode()
cfg = _C
_C.PREPROCESS = True
_C.FEATURE = True
_C.ONLY_POWER = False
_C.REPORT = True
_C.DUPLICATE = True

_C.OUT_DIR = './output'

_C.LANGUAGE = 'Korean'

_C.DEBUG_MODE = False

# ---------------------------------- Default config ---------------------------------- #
_CFG_DEFAULT = _C.clone()
_CFG_DEFAULT.freeze()


def assert_cfg():
    """Checks config values invariants."""
    assert True


def dump_cfg():
    """Dumps the config to the output directory."""
    cfg_file = os.path.join(_C.OUT_DIR, _C.CFG_DEST)
    with pathmgr.open(cfg_file, "w") as f:
        _C.dump(stream=f)
    return cfg_file


def load_cfg(cfg_file):
    """Loads config from specified file."""
    with pathmgr.open(cfg_file, "r") as f:
        _C.merge_from_other_cfg(_C.load_cfg(f))


def reset_cfg():
    """Reset config to initial state."""
    _C.merge_from_other_cfg(_CFG_DEFAULT)
