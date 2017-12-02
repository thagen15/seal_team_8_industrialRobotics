MODULE MainModule
    CONST jointtarget home:=[[-90,40,10,0,40,90],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_1:=[[25,25,137],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_1d:=[[25,25,122],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_2:=[[558,25,137],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_2d:=[[558,25,122],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_3:=[[558,406,137],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_3d:=[[558,406,122],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_4:=[[25,406,137],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_4d:=[[25,406,122],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_0_clearance:=[[74,374,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_0_contact:=[[74,374,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_1_contact:=[[277,13,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_1_clearance:=[[277,13,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_2_clearance:=[[277,13,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_2_contact:=[[277,13,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_3_contact:=[[480,374,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_3_clearance:=[[480,374,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_4_clearance:=[[376,195,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_4_contact:=[[376,195,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_5_contact:=[[177,195,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_5_clearance:=[[177,195,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_6_clearance:=[[176,196,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_6_contact:=[[176,196,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_7_contact:=[[276,373,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_7_clearance:=[[276,373,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_8_clearance:=[[278,374,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_8_contact:=[[278,374,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_9_contact:=[[377,197,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_9_clearance:=[[377,197,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_10_clearance:=[[480,375,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_10_contact:=[[480,375,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_11_contact:=[[75,375,122],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_11_clearance:=[[75,375,137],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];



    PROC main()
        Path_Calib;
        Path_Draw;
    ENDPROC
    LOCAL PROC Path_Calib()
        MoveAbsJ home,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_1,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_1d,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_1,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_2,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_2d,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_2,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_3,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_3d,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_3,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_4,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_4d,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_4,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_1,v80,fine,GS25_ParallelGripper\WObj:=Workobject_1;
    ENDPROC

    LOCAL PROC Path_Draw()
        MoveL point_0_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_0_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_1_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_1_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_2_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_2_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_3_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_3_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_4_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_4_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_5_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_5_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_6_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_6_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_7_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_7_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_8_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_8_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_9_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_9_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_10_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_10_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_11_contact,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL point_11_clearance,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveAbsJ home,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
    ENDPROC
ENDMODULE