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
        void helloworld()
        void processFrame(Mat im_gray)
        #void initialize(const Mat im_gray, const Rect rect)
        

cdef class PyCMT:
    cdef CMT *thisptr 
    
    def __cinit__(self):
        self.thisptr = new CMT()   
    
    def helloworld(self):
        return self.thisptr.helloworld()
    
    # def initialize(im_gray, rect):
    #     return self.ptr.processFrame(im_gray)
    

    def processFrame(self, im_gray):
        return self.ptr.processFrame(im_gray)

# cdef extern from "Rectangle.h" namespace "shapes":
#     cdef cppclass Rectangle:
#         Rectangle(int, int, int, int)
#         int x0, y0, x1, y1
#         int getLength()
#         int getHeight()
#         int getArea()
#         void move(int, int)
#
# cdef class PyRectangle:
#     cdef Rectangle *thisptr      # hold a C++ instance which we're wrapping
#     def __cinit__(self, int x0, int y0, int x1, int y1):
#         self.thisptr = new Rectangle(x0, y0, x1, y1)
#     def __dealloc__(self):
#         del self.thisptr
#     def getLength(self):
#         return self.thisptr.getLength()
#     def getHeight(self):
#         return self.thisptr.getHeight()
#     def getArea(self):
#         return self.thisptr.getArea()
#     def move(self, dx, dy):
#         self.thisptr.move(dx, dy)