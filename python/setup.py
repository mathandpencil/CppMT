import numpy
import os
import subprocess
from distutils.core import setup, Extension
from Cython.Build import cythonize
from Cython.Distutils import build_ext

proc_libs = subprocess.check_output("pkg-config --libs opencv".split())
proc_incs = subprocess.check_output("pkg-config --cflags opencv".split())
libs = [lib for lib in proc_libs.split()]

CURRENT_DIR = os.path.dirname(os.path.dirname(__file__))
INCLUDE_DIRS = [
    numpy.get_include(), 
    "/usr/local/Cellar/opencv/2.4.9/include/",
    os.path.join(CURRENT_DIR, "../")
]

setup(
  cmdclass = {'build_ext': build_ext },
  ext_modules = cythonize(Extension("cmt_tracker",
    sources = ["cmt_tracker.pyx", "../CMT.cpp"],
    language = "c++",
    include_dirs=INCLUDE_DIRS,
    extra_link_args=libs
    )
  )
)

