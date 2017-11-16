import numpy  # requires the numpy+mkl pkg
from scipy.spatial import distance as dist
from imutils import perspective
from imutils import contours
import numpy as np
import argparse
import imutils
import time
import cv2
import math
from picture_processor import PictureToLine
from Tkinter import Tk
from tkFileDialog import askopenfilename

whiteboardConversion = 0;

def convertToWhiteBoard(x,y):
    whiteboardX = x*whiteboardConversion;
    whiteboardY = y*whiteboardConversion;

    return (whiteboardX,whiteboardY)

def main():

    Tk().withdraw() # we don't want a full GUI, so keep the root window from appearing
    filename = askopenfilename(initialdir = '/home/thagen/Documents/Industrial Robotics/Pics') # show an "Open" dialog box and return the path to the selected file
    img = cv2.imread(filename)

    print('Creating pipeline')
    pipeline = PictureToLine()
    print('Running pipeline')
    pointPairs = pipeline.process(img)
    # for a in pointPairs:
    #     print a
   # print whiteboardPointPairs

if __name__ == '__main__':
    main()
