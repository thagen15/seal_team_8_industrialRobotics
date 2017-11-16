import cv2
import numpy as np

class PointPair:
    def __init__(self,x1,x2,y1,y2):
        self.point1 = [int(x1),int(y1)]
        self.point2 = [int(x2),int(y2)]
        print(self.point1, self.point2)

    def getPoint1(self):
        x = self.point1[0]
        y = self.point1[1]
        p1 = (x,y)
        return p1

    def getPoint2(self):
        x = self.point2[0]
        y = self.point2[1]
        p2 = (x,y)
        return p2
