MODULE Module1
    CONST robtarget point_0_clearance:=[[291,13,10],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_0_contact:=[[291,13,5],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_1_contact:=[[503,412,5],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_1_clearance:=[[503,412,10],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_2_clearance:=[[396,214,10],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_2_contact:=[[396,214,5],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_3_contact:=[[186,214,5],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_3_clearance:=[[186,214,10],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_4_clearance:=[[185,214,10],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_4_contact:=[[185,214,5],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_5_contact:=[[290,411,5],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_5_clearance:=[[290,411,10],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_6_clearance:=[[291,411,10],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_6_contact:=[[291,411,5],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_7_contact:=[[395,216,5],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_7_clearance:=[[395,216,10],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_8_clearance:=[[502,413,10],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_8_contact:=[[502,413,5],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_9_contact:=[[78,413,5],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];
    CONST robtarget point_9_clearance:=[[78,413,10],[0,0,1,0],[0, 0, 0, 0],[9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0, 9000000000.0]];



    PROC main()
        Path_Draw;
    ENDPROC
    LOCAL PROC Path_Draw()
        MoveL point_0_clearance,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_0_contact,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_1_contact,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_1_clearance,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_2_clearance,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_2_contact,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_3_contact,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_3_clearance,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_4_clearance,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_4_contact,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_5_contact,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_5_clearance,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_6_clearance,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_6_contact,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_7_contact,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_7_clearance,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_8_clearance,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_8_contact,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_9_contact,v1000,fine,MyTool\WObj:=Workobject_1;
        MoveL point_9_clearance,v1000,fine,MyTool\WObj:=Workobject_1;
    ENDPROC
ENDMODULE