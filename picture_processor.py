import cv2
import numpy as np
import math
from enum import Enum
from PointPair import PointPair

constantZ = "5"
constantZup = "10"
constantAlpha = "30";
constantBeta = "-30";
constantGamma = "30";
robConfig = str([0,0,0,0])
extJoint = str([9E+09,9E+09,9E+09,9E+09,9E+09,9E+09])
whiteboardWidth = 584
whiteboardHeight = 431
adjustedWidth = 558
adjustedHeight = 406



class PictureToLine:
    """
    An OpenCV pipeline generated by GRIP.
    """

    def __init__(self):
        """initializes all values to presets or None if need to be set
        """
        #HEIGHT AND WIDTH ARE THOSE OF THE WHITEBOARD (MM) - 1/2 INCH
        self.__resize_image_width = adjustedWidth
        self.__resize_image_height = adjustedHeight
        self.__resize_image_interpolation = cv2.INTER_CUBIC

        self.resize_image_output = None
        self.__find_lines_input = self.resize_image_output
        self.find_lines_output = None


    def process(self, source0):
        """
        Runs the pipeline and sets all outputs to new values.
        """
        # Step Resize_Image0:
        self.__resize_image_input = source0
        (self.resize_image_output) = self.__resize_image(self.__resize_image_input, self.__resize_image_width, self.__resize_image_height, self.__resize_image_interpolation)

        # Step Find_Lines0:
        self.__find_lines_input = self.resize_image_output
        (self.find_lines_output) = self.__find_lines(self.__find_lines_input)

    @staticmethod
    def __resize_image(input, width, height, interpolation):
        """Scales and image to an exact size.
        Args:
            input: A numpy.ndarray.
            Width: The desired width in pixels.
            Height: The desired height in pixels.
            interpolation: Opencv enum for the type fo interpolation.
        Returns:
            A numpy.ndarray of the new size.
        """
        return cv2.resize(input, ((int)(width), (int)(height)), 0, 0, interpolation)


    class Line:

        def __init__(self, x1, y1, x2, y2):
            self.x1 = x1
            self.y1 = y1
            self.x2 = x2
            self.y2 = y2


        def createPointPair(self):
            o = PointPair(self.x1,self.x2,self.y1,self.y2)
            return o
        def length(self):
            return numpy.sqrt(pow(self.x2 - self.x1, 2) + pow(self.y2 - self.y1, 2))

        def angle(self):
            return math.degrees(math.atan2(self.y2 - self.y1, self.x2 - self.x1))
    @staticmethod
    def __find_lines(input):
        """Finds all line segments in an image.
        Args:
            input: A numpy.ndarray.
        Returns:
            A filtered list of Lines.
        """
        detector = cv2.createLineSegmentDetector()
        if (len(input.shape) == 2 or input.shape[2] == 1):
            lines = detector.detect(input)
        else:
            tmp = cv2.cvtColor(input, cv2.COLOR_BGR2GRAY)
            lines = detector.detect(tmp)
        #output = []
        pointPairs =[]
        lineSegments = 0
        if len(lines) != 0:
            for i in range(1, len(lines[0])):
                tmp = PictureToLine.Line(lines[0][i, 0][0], lines[0][i, 0][1],
                                lines[0][i, 0][2], lines[0][i, 0][3])

                pointPairs.append(tmp.createPointPair())
                #output.append(tmp)
                lineSegments +=1

        pointPairs.reverse
        img = np.zeros((whiteboardHeight,whiteboardWidth,3), np.uint8)
        for pair in pointPairs:
            x1 = pair.getPoint1X()+12
            y1 = pair.getPoint1Y()+12
            x2 = pair.getPoint2X()+12
            y2 = pair.getPoint2Y()+12
            pair.setPoint1(x1,y1)
            pair.setPoint2(x2,y2)
            print pair
            cv2.line(img,pair.getPoint1(),pair.getPoint2(),(50,205,50),1)
            cv2.imshow('img',img)
            cv2.waitKey(1)

        # for pair in pointPairs:
        #     cv2.line(img,pair.getPoint1(),pair.getPoint2(),(50,205,50),1)
        #     cv2.imshow('img',img)
        #     cv2.waitKey(1)
        print "There are ",lineSegments," line segments in the picture"
        cv2.waitKey(0)
        cv2.destroyAllWindows()

        file = open('robotPath.mod', 'w')
        i = 0
        robTargets = []
        txt = ''

        for pair in pointPairs:
            point1_clearance = 'point_'+str(i)+'_clearance:=[[' +str(pair.getPoint1X())+',' +str(pair.getPoint1Y())+','+constantZup+'],['+constantAlpha+','+constantBeta+','+constantGamma+'],' +robConfig+','+extJoint+', v1000, z0, tool0]\n';
            point1_contact = 'point_'+str(i)+'_contact:=[[' +str(pair.getPoint1X())+',' +str(pair.getPoint1Y())+','+constantZ+'],['+constantAlpha+','+constantBeta+','+constantGamma+'],' +robConfig+','+extJoint+', v1000, z0, tool0]\n';
            robTargets.append('point_'+str(i)+'_clearance')
            robTargets.append('point_'+str(i)+'_contact')
            i+=1;
            point2_contact = 'point_'+str(i)+'_contact:=[[' +str(pair.getPoint2X())+',' +str(pair.getPoint2Y())+','+constantZ+'],['+constantAlpha+','+constantBeta+','+constantGamma+'],' +robConfig+','+extJoint+',  v1000, z0, tool0]\n';
            point2_clearance = 'point_'+str(i)+'_clearance:=[[' +str(pair.getPoint2X())+',' +str(pair.getPoint2Y())+','+constantZup+'],['+constantAlpha+','+constantBeta+','+constantGamma+'],' +robConfig+','+extJoint+', v1000, z0, tool0]\n';
            robTargets.append('point_'+str(i)+'_contact')
            robTargets.append('point_'+str(i)+'_clearance')

            txt += ('CONST robtarget '+point1_clearance)
            txt += ('CONST robtarget '+point1_contact)
            txt += ('CONST robtarget '+point2_contact)
            txt += ('CONST robtarget '+point2_clearance)
            i+=1

        txt += '\nPROC main()\n'
        txt += '    MoveL [[' +str(0)+',' +str(0)+','+constantZup+'],['+constantAlpha+','+constantBeta+','+constantGamma+'],' +robConfig+','+extJoint+',  v1000, z0, tool0]\n';
        for targets in robTargets:
            txt += '    MoveL '+targets+',v1000,fine, \n'
        txt += 'ENDPROC'
        file.write(txt)
        file.close()


        return pointPairs
