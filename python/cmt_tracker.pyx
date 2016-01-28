from libcpp.vector cimport vector

ctypedef int t_index;

cdef extern from "opencv2/core/core.hpp" namespace "cv":
  cdef cppclass Mat:
    Mat() except +
    void create(int, int, int)
    void* data

cdef extern from "opencv2/core/core.hpp" namespace "cv":
    cdef cppclass Point2f:
        Point2f() except +

cdef extern from "opencv2/core/core.hpp" namespace "cv":
    cdef cppclass Rect:
        Rect() except +

cdef extern from "opencv2/core/core.hpp" namespace "cv":
  cdef cppclass KeyPoint:
    KeyPoint() except +

cdef extern from "common.h" namespace "cmt":
    cdef Point2f rotate(const Point2f v, const float angle);

# cdef extern from "fastcluster/fastcluster.h":
#     cdef cppclass cluster_result:
#         cluster_result(const t_index size)

cdef extern from "Consensus.h" namespace "cmt":
  cdef cppclass Consensus:
      Consensus()
      void initialize(const vector[Point2f] & points_normalized)
      void estimateScaleRotation(const vector[Point2f] & points, const vector[int] & classes,
              float & scale, float & rotation)
      void findConsensus(const vector[Point2f] & points, const vector[int] & classes,
              const float scale, const float rotation,
              Point2f & center, vector[Point2f] & points_inlier, vector[int] & classes_inlier)

cdef extern from "Tracker.h" namespace "cmt":
  cdef cppclass Tracker:
      Tracker()
      void track(const Mat im_prev, const Mat im_gray, const vector[Point2f] & points_prev,
              vector[Point2f] & points_tracked, vector[unsigned char] & status)


cdef extern from "Matcher.h" namespace "cmt":
  cdef cppclass Matcher:
      Matcher()
      void initialize(const vector[Point2f] & pts_fg_norm, const Mat desc_fg, const vector[int] & classes_fg,
              const Mat desc_bg, const Point2f center);
      void matchGlobal(const vector[KeyPoint] & keypoints, const Mat descriptors,
              vector[Point2f] & points_matched, vector[int] & classes_matched);
      void matchLocal(const vector[KeyPoint] & keypoints, const Mat descriptors,
              const Point2f center, const float scale, const float rotation,
              vector[Point2f] & points_matched, vector[int] & classes_matched);


cdef extern from "Fusion.h" namespace "cmt":
    cdef cppclass Fusion:
        void preferFirst(const vector[Point2f] & firstPoints, const vector[int] & firstClasses,
               const vector[Point2f] & secondPoints, const vector[int] & secondClasses,
               vector[Point2f] & fusedPoints, vector[int] & fusedClasses)

cdef extern from "CMT.h" namespace "cmt":
    cdef cppclass CMT:
        CMT()
        void processFrame(Mat)
        void initialize(Mat im_gray, Rect rect)
 
cdef class PyMat:
    cdef Mat Mat
    # def __cinit__(self, x , y ,z):
    #     self.thisptr = new Mat()
cdef class PyRect:
    cdef Rect Rect
        
cdef class PyCMT:
    
    cdef CMT *thisptr 
    
    def __cinit__(self):
        self.thisptr = new CMT()   
        
    def processFrame(self, PyMat im_gray):
        self.thisptr.processFrame(im_gray.Mat)
            
    def initialize(self, PyMat  im_gray, PyRect rect):
        self.thisptr.initialize(im_gray.Mat, rect.Rect)
    

