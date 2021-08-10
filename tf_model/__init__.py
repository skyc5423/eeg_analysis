# noinspection SpellCheckingInspection
__author__ = 'wookjae.jo'

import logging
import os

import psutil
import tensorflow

__default = None


def default():
    global __default
    if __default is None:
        tensorflow.get_logger().setLevel(logging.WARNING)
        os.environ['TF_XLA_FLAGS'] = '--tf_xla_cpu_global_jit'
        physical_cpu_count = psutil.cpu_count(logical=False)
        tensorflow.config.optimizer.set_jit(True)
        tensorflow.config.threading.set_intra_op_parallelism_threads(physical_cpu_count)
        tensorflow.config.threading.set_inter_op_parallelism_threads(physical_cpu_count * 2)
        tensorflow.config.set_soft_device_placement(True)

        __default = tensorflow.saved_model.load(os.path.join(os.path.dirname(__file__), '50'))

    return __default
