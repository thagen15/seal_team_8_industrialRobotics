MODULE Module1
    CONST jointtarget home:=[[0,40,10,0,40,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_1:=[[25,25,130],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_2:=[[558,25,130],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_3:=[[558,406,130],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget calib_4:=[[25,406,130],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_0_clearance:=[[291,13,130],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_0_contact:=[[291,13,125],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_1_contact:=[[503,412,125],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_1_clearance:=[[503,412,130],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_2_clearance:=[[396,214,130],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_2_contact:=[[396,214,125],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_3_contact:=[[186,214,125],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_3_clearance:=[[186,214,130],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_4_clearance:=[[185,214,130],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_4_contact:=[[185,214,125],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_5_contact:=[[290,411,125],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_5_clearance:=[[290,411,130],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_6_clearance:=[[291,411,130],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_6_contact:=[[291,411,125],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_7_contact:=[[395,216,125],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_7_clearance:=[[395,216,130],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_8_clearance:=[[502,413,130],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_8_contact:=[[502,413,125],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_9_contact:=[[78,413,125],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget point_9_clearance:=[[78,413,130],[0,0,1,0],[0, 0, 0, 0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];



    PROC main()
        Path_Calib;
        Path_Draw;
    ENDPROC
    LOCAL PROC Path_Calib()
        MoveAbsJ home,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_1,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_2,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_3,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_4,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
        MoveL calib_1,v500,fine,GS25_ParallelGripper\WObj:=Workobject_1;
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
    ENDPROC
ENDMODULE