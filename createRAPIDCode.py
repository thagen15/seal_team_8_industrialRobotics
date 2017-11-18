import PointPair

constantZ = 5
constantAlpha = 30
constantBeta = -30
constantGamma = 30
class CodeGenerator:

    def createCode(pairs):
        txt = ''
        txt += 'PROC main()\n'
        for pair in pairs:
            c1 = 'MoveL [[' +pair.getPoint1X+',' +pair.getPoint1Y+','+constantZ+'],['+constantAlpha+','+constantBeta+','+constantGamma+'], fine, tool0]\n'
            c2 = 'MoveL [[' +pair.getPoint2X+',' +pair.getPoint2Y+','+constantZ+'],['+constantAlpha+','+constantBeta+','+constantGamma+'], fine, tool0]\n'
            txt += c1
            txt += c2
        txt += 'ENDPROC'
        print txt
