//Maya ASCII 2017ff05 scene
//Name: RK Switch.ma
//Last modified: Tue, Sep 26, 2017 12:51:18 PM
//Codeset: 1252
requires maya "2017ff05";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "7E859EB8-4895-3D7C-8225-7A9DC16392BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 25.179194106293423 8.9518992277007676 -14.153374043436683 ;
	setAttr ".r" -type "double3" -11.138352730265753 -241.80000000000013 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "79C53E5F-4035-CA9D-1750-51B369BC09CF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 29.020177834136636;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5FC554B1-4585-7088-9041-2DBF4F9E47CC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A1CF70C6-4E2C-C022-E5EE-BC894C7A5B64";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "46D4EBE1-4DB7-5463-32F6-3DA2F3F45982";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E8EA870A-4A71-8798-CB03-5EB48EA2AB81";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "FF1469B4-4D8B-5A35-6B42-5FBBB3F6172E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 1.2994044396318354 0.50351922035733765 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F8323ACD-45E2-07F7-B520-098751DD4855";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 45.332972387655651;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "Arm_1_FK_Jnt";
	rename -uid "5C691BF6-457E-565A-D2DE-70BB5EC27E43";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 90.000000000000071 -68.198590513648185 89.999999999999901 ;
	setAttr ".radi" 0.72681886933454343;
createNode joint -n "Arm_2_FK_Jnt" -p "Arm_1_FK_Jnt";
	rename -uid "592B1E00-40AE-10A4-3AAC-B59D14B80E78";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 0 0 66.801409486351844 ;
	setAttr ".radi" 0.66772279416134239;
createNode joint -n "Arm_3_FK_Jnt" -p "Arm_2_FK_Jnt";
	rename -uid "D17DC165-4D60-23FD-5FD0-FDB6143D1D57";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.66772279416134239;
createNode parentConstraint -n "Arm_3_FK_Jnt_parentConstraint1" -p "Arm_3_FK_Jnt";
	rename -uid "86407963-4FA2-DC2B-4C74-1B9FA3CC4FC0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_3_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.5777218104420236e-030 1.3322676295501878e-015 
		-8.8817841970012523e-016 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000057 -45 -89.999999999999929 ;
	setAttr ".lr" -type "double3" -1.5902773407317584e-014 6.361109362927032e-015 -1.5902773407317584e-014 ;
	setAttr ".rst" -type "double3" -1.2212453270876722e-015 4.2426406871192874 3.0924486001458622e-017 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-014 6.361109362927032e-015 
		-1.5902773407317584e-014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arm_3_FK_Jnt_scaleConstraint1" -p "Arm_3_FK_Jnt";
	rename -uid "9393CCCD-49B1-C52F-B6C7-9AB1E94DEB89";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_3_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arm_2_FK_Jnt_scaleConstraint1" -p "Arm_2_FK_Jnt";
	rename -uid "74BF7459-4532-FA3A-F406-038F473FF234";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_2_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_2_FK_Jnt_parentConstraint1" -p "Arm_2_FK_Jnt";
	rename -uid "85A128B7-4729-00A2-BB61-4C874CE0CA47";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_2_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.6645352591003757e-015 -8.8817841970012523e-016 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000057 -44.999999999999972 -89.999999999999986 ;
	setAttr ".lr" -type "double3" -1.6778022230925334e-014 3.4438182864635349e-015 6.3611093629270327e-015 ;
	setAttr ".rst" -type "double3" 0 5.3851648071345073 2.391493584112727e-015 ;
	setAttr ".rsrr" -type "double3" -1.6778022230925334e-014 3.4438182864635349e-015 
		6.3611093629270327e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_1_FK_Jnt_parentConstraint1" -p "Arm_1_FK_Jnt";
	rename -uid "48145111-4E21-9979-8AFB-7BA3A735D813";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_1_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 90.000000000000099 -68.198590513648185 89.999999999999844 ;
	setAttr ".lr" -type "double3" -1.5902773407317593e-014 1.1034765745125406e-030 7.9513867036587967e-015 ;
	setAttr ".rst" -type "double3" 0 7.0000000000000018 0 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317593e-014 1.1034765745125406e-030 
		7.9513867036587967e-015 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arm_1_FK_Jnt_scaleConstraint1" -p "Arm_1_FK_Jnt";
	rename -uid "68851D60-46E0-6C94-F3D7-639303C012E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_1_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Arm_1_IK_Jnt";
	rename -uid "7DF23C6C-4420-FB27-43BD-E5BD6838FCD8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 90.000000000000099 -68.198590513648185 89.999999999999844 ;
	setAttr ".radi" 0.72681886933454343;
createNode joint -n "Arm_2_IK_Jnt" -p "Arm_1_IK_Jnt";
	rename -uid "666A5AC8-47A5-F5D4-0D90-1CBE0E1FD3D1";
	setAttr ".t" -type "double3" 0 5.3851648071345091 2.3914935841127278e-015 ;
	setAttr ".r" -type "double3" 1.3378765567082635e-028 4.6251068746218285e-030 -3.4276989604053703e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 0 0 66.801409486351844 ;
	setAttr ".radi" 0.66772279416134239;
createNode joint -n "Arm_3_IK_Jnt" -p "Arm_2_IK_Jnt";
	rename -uid "31D82304-4181-C394-6714-5CAF75642AE6";
	setAttr ".t" -type "double3" -1.2314463995229724e-015 4.2426406871192874 3.0924486001459066e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.66772279416134239;
createNode ikEffector -n "effector1" -p "Arm_2_IK_Jnt";
	rename -uid "7DCF6813-43B9-6E7F-B9B7-DDA4BD912142";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Arm_1_IK_Jnt_parentConstraint1" -p "Arm_1_IK_Jnt";
	rename -uid "AF430526-4EE0-44C9-5459-788091D8019F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_1_IK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 2.8249000307521015e-030 5.649800061504203e-030 
		0 ;
	setAttr ".rst" -type "double3" 0 7.0000000000000018 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arm_1_IK_Jnt_scaleConstraint1" -p "Arm_1_IK_Jnt";
	rename -uid "B9D7BA06-4E68-DEAE-C516-3CAEC77577AE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_1_IK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Arm_1_RK_Jnt";
	rename -uid "34838790-479A-25E9-FEF7-E7B30855B89D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 90.000000000000099 -68.198590513648185 89.999999999999844 ;
	setAttr ".radi" 0.72681886933454343;
createNode joint -n "Arm_2_RK_Jnt" -p "Arm_1_RK_Jnt";
	rename -uid "CDCA51F4-442E-98A3-E6C3-368FAEC4328C";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 0 0 66.801409486351844 ;
	setAttr ".radi" 0.66772279416134239;
createNode joint -n "Arm_3_RK_Jnt" -p "Arm_2_RK_Jnt";
	rename -uid "1EF37551-418C-AC9A-7364-F9B86463D046";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.66772279416134239;
createNode parentConstraint -n "Arm_3_RK_Jnt_parentConstraint1" -p "Arm_3_RK_Jnt";
	rename -uid "9FBFF65A-4AC3-2693-56D6-78BF118F8900";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_3_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_3_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 9.9920072216264049e-016 1.5543122344752192e-015 
		-2.3502609361107823e-015 ;
	setAttr ".tg[1].tot" -type "double3" -1.1102230246251597e-015 -2.2204460492503131e-016 
		7.8886090522101181e-031 ;
	setAttr ".rst" -type "double3" -1.2212453270876722e-015 4.2426406871192874 3.0924486001459016e-017 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Arm_2_RK_Jnt_parentConstraint1" -p "Arm_2_RK_Jnt";
	rename -uid "BC8EC38E-4B08-A4A7-3FAF-9BA0C41F5A40";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_2_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_2_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 1.3322676295501878e-015 1.7763568394002505e-015 
		-1.7936201880845445e-015 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -6.3611093629270351e-015 ;
	setAttr ".tg[1].tot" -type "double3" -1.3322676295501847e-015 8.8817841970012523e-016 
		1.5777218104420236e-030 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 -6.3611093629270351e-015 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 5.3851648071345082 2.3914935841127294e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Arm_1_RK_Jnt_parentConstraint1" -p "Arm_1_RK_Jnt";
	rename -uid "23F888BC-4DC9-141D-8A49-E6957073F4AA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_1_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_1_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781107e-014 1.1299600123008403e-029 
		9.5416640443905487e-015 ;
	setAttr ".tg[1].tor" -type "double3" 2.8249000307521015e-030 5.649800061504203e-030 
		0 ;
	setAttr ".lr" -type "double3" 1.7493050748049341e-014 9.7105938557103481e-031 -6.3611093629270335e-015 ;
	setAttr ".rst" -type "double3" 0 7.0000000000000018 0 ;
	setAttr ".rsrr" -type "double3" 1.1131941385122309e-014 -6.3611093629270335e-015 
		-3.1805546814635176e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Arm_Ctrl_Grps";
	rename -uid "812A5390-453C-6386-36D4-5A8F4C8558EF";
createNode transform -n "Arm_FK_Ctrl_Grp" -p "Arm_Ctrl_Grps";
	rename -uid "0BF3D272-4FCF-5FAC-A47D-2A8970691567";
createNode transform -n "Arm_1_FK_Ctrl_Grp" -p "Arm_FK_Ctrl_Grp";
	rename -uid "FA186254-4F86-DC6F-0520-49A7BFB58A38";
	setAttr ".rp" -type "double3" 0 7.0000000000000018 0 ;
	setAttr ".sp" -type "double3" 0 7.0000000000000018 0 ;
createNode transform -n "Arm_1_FK_Ctrl" -p "Arm_1_FK_Ctrl_Grp";
	rename -uid "4360969A-43D6-2C82-F778-D18D2B7E8E1C";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 7.0000000000000018 0 ;
	setAttr ".sp" -type "double3" 0 7.0000000000000018 0 ;
createNode nurbsCurve -n "Arm_1_FK_CtrlShape" -p "Arm_1_FK_Ctrl";
	rename -uid "489692F3-40BE-B05C-B2E7-D39A4A199F87";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.78361162489122305 7.2910260513672931 0.72756512841822629
		-1.1081941875543879 7.0000000000000027 6.4601830675501949e-016
		-0.78361162489122504 6.7089739486327122 -0.7275651284182244
		-1.4284353832245084e-015 6.5884270111524907 -1.0289324721187765
		0.78361162489122327 6.7089739486327105 -0.72756512841822574
		1.1081941875543881 7.0000000000000009 -1.0734446334548547e-015
		0.78361162489122516 7.2910260513672913 0.72756512841822407
		1.702521692428844e-015 7.4115729888475128 1.0289324721187765
		-0.78361162489122305 7.2910260513672931 0.72756512841822629
		-1.1081941875543879 7.0000000000000027 6.4601830675501949e-016
		-0.78361162489122504 6.7089739486327122 -0.7275651284182244
		;
createNode transform -n "Arm_2_FK_Ctrl_Grp" -p "Arm_1_FK_Ctrl";
	rename -uid "2F178DBB-4CAC-F68B-0267-06AFE4A99EF4";
	setAttr ".rp" -type "double3" -3.944304526105059e-031 1.9999999999999982 2.0000000000000022 ;
	setAttr ".sp" -type "double3" -3.944304526105059e-031 1.9999999999999982 2.0000000000000022 ;
createNode transform -n "Arm_2_FK_Ctrl" -p "Arm_2_FK_Ctrl_Grp";
	rename -uid "90CC1F08-43C8-6FD2-0532-88ADE20C4412";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.944304526105059e-031 1.9999999999999982 2.0000000000000022 ;
	setAttr ".sp" -type "double3" -3.944304526105059e-031 1.9999999999999982 2.0000000000000022 ;
createNode nurbsCurve -n "Arm_2_FK_CtrlShape" -p "Arm_2_FK_Ctrl";
	rename -uid "4B278DA4-443B-33A9-DD9D-83B4E733C170";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.78361162489122438 1.4459029062228046 2.5540970937771972
		-1.1081941875543881 1.9999999999999996 2.0000000000000031
		-0.78361162489122416 2.5540970937771932 1.445902906222809
		1.7101013038773669e-016 2.7836116248912228 1.2163883751087781
		0.7836116248912246 2.5540970937771914 1.4459029062228077
		1.1081941875543884 1.9999999999999971 2.0000000000000009
		0.78361162489122427 1.4459029062228035 2.554097093777195
		1.0307617881659809e-016 1.2163883751087736 2.7836116248912264
		-0.78361162489122438 1.4459029062228046 2.5540970937771972
		-1.1081941875543881 1.9999999999999996 2.0000000000000031
		-0.78361162489122416 2.5540970937771932 1.445902906222809
		;
createNode transform -n "Arm_3_FK_Ctrl_Grp" -p "Arm_2_FK_Ctrl";
	rename -uid "B9FE0D28-42DD-E53D-BA19-239A4818B66C";
	setAttr ".rp" -type "double3" -4.6077484142171939e-015 -1.0000000000000013 -1.0000000000000009 ;
	setAttr ".sp" -type "double3" -4.6077484142171939e-015 -1.0000000000000013 -1.0000000000000009 ;
createNode transform -n "Arm_3_FK_Ctrl" -p "Arm_3_FK_Ctrl_Grp";
	rename -uid "A0926032-4985-BE61-300D-80812AA2C84F";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -4.6077484142171939e-015 -1.0000000000000013 -1.0000000000000009 ;
	setAttr ".sp" -type "double3" -4.6077484142171939e-015 -1.0000000000000013 -1.0000000000000009 ;
createNode nurbsCurve -n "Arm_3_FK_CtrlShape" -p "Arm_3_FK_Ctrl";
	rename -uid "98EA1C19-4A97-94EF-BD67-63A864FB063B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.78361162489122826 -1.5540970937771954 -0.44590290622280604
		-1.1081941875543926 -1.0000000000000007 -1
		-0.78361162489122915 -0.44590290622280693 -1.5540970937771938
		-5.1749439054966468e-015 -0.21638837510877673 -1.783611624891225
		0.78361162489121916 -0.44590290622280759 -1.5540970937771954
		1.1081941875543835 -1.0000000000000016 -1.000000000000002
		0.78361162489121994 -1.5540970937771954 -0.44590290622280826
		-3.7664666137334054e-015 -1.7836116248912259 -0.21638837510877684
		-0.78361162489122826 -1.5540970937771954 -0.44590290622280604
		-1.1081941875543926 -1.0000000000000007 -1
		-0.78361162489122915 -0.44590290622280693 -1.5540970937771938
		;
createNode transform -n "Arm_IK_Ctrl_Grp" -p "Arm_Ctrl_Grps";
	rename -uid "3E7F4C05-458E-CE66-7DB2-8B936AF5D431";
createNode transform -n "Arm_1_IK_Ctrl_Grp" -p "Arm_IK_Ctrl_Grp";
	rename -uid "8D2A3AA5-4EDE-BA68-AB6D-CBAC70BC2682";
	setAttr ".t" -type "double3" 0 7.0000000000000018 0 ;
	setAttr ".r" -type "double3" 90.000000000000099 -68.198590513648185 89.999999999999844 ;
createNode transform -n "Arm_1_IK_Ctrl" -p "Arm_1_IK_Ctrl_Grp";
	rename -uid "AA8F5550-4B94-0F0A-12EB-649D1ADED992";
createNode nurbsCurve -n "Arm_1_IK_CtrlShape" -p "Arm_1_IK_Ctrl";
	rename -uid "5DE2A6A7-46FB-3759-362B-2F9387B66316";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884694e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-017 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-032 5.9521325992805852e-016
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode transform -n "Arm_2_IK_Ctrl_Grp" -p "Arm_1_IK_Ctrl";
	rename -uid "D6AFAF4F-4290-A5EF-5BD9-DBAE84FE8CE5";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 5.38516480713451 2.3914935841127278e-015 ;
	setAttr ".r" -type "double3" 0 0 66.801409486351844 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "Arm_2_IK_Ctrl" -p "Arm_2_IK_Ctrl_Grp";
	rename -uid "14EF65E2-471A-6A37-72CF-2394C46BEBB6";
	setAttr ".t" -type "double3" 4.2272830057883128 -4.2272830057883146 -4.4585655784011882e-015 ;
createNode nurbsCurve -n "Arm_2_IK_CtrlShape" -p "Arm_2_IK_Ctrl";
	rename -uid "19B8E8E8-45D6-700E-82FC-759FACA42A0A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884694e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-017 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-032 5.9521325992805852e-016
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode transform -n "Arm_3_IK_Ctrl_Grp" -p "Arm_2_IK_Ctrl";
	rename -uid "66DE3E93-4BD6-8B1B-5242-12B059C8FED2";
	setAttr ".t" -type "double3" -4.2272830057883164 8.4699236929076029 5.6530508738270455e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "Arm_3_IK_Ctrl" -p "Arm_3_IK_Ctrl_Grp";
	rename -uid "382C3E71-4070-0FFA-897F-C9A2DCD5B91D";
createNode nurbsCurve -n "Arm_3_IK_CtrlShape" -p "Arm_3_IK_Ctrl";
	rename -uid "8002A06F-4779-8477-072E-F1AA631D12B0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884694e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-017 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-032 5.9521325992805852e-016
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode ikHandle -n "Arm_3_IK_Handle" -p "Arm_3_IK_Ctrl";
	rename -uid "409EEE00-4671-4D0F-9CD7-109C54BEE081";
	setAttr ".t" -type "double3" -3.944304526105059e-031 0 0 ;
	setAttr ".r" -type "double3" 134.99999999999997 -89.999999999999929 0 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "Arm_3_IK_Handle_poleVectorConstraint1" -p "Arm_3_IK_Handle";
	rename -uid "55EA76DB-4ED1-B55C-EA82-929DB99D759F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_2_IK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.1770304740941526 -2.1059626622286762 -9.9152350732416739e-016 ;
	setAttr -k on ".w0";
createNode transform -n "FKIK_Switch" -p "Arm_Ctrl_Grps";
	rename -uid "6B625F4F-49A2-95C0-2A2A-5FB2F56AD6E5";
	addAttr -ci true -sn "FKIKSwitch" -ln "FKIKSwitch" -min 0 -max 1 -at "double";
	setAttr -k on ".FKIKSwitch" 1;
createNode nurbsCurve -n "FKIK_SwitchShape" -p "FKIK_Switch";
	rename -uid "70541ED8-424B-469A-B482-0F972C961D54";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.2501472550206807 1.9901412163093124e-016 -3.2501472550206736
		-5.2439454623326599e-016 2.8144846991423169e-016 -4.596402327759928
		-3.2501472550206754 1.9901412163093144e-016 -3.2501472550206754
		-4.596402327759928 1.0095562006749008e-031 -1.6813818227282746e-015
		-3.2501472550206776 -1.9901412163093139e-016 3.250147255020674
		-1.3849857252858617e-015 -2.8144846991423188e-016 4.596402327759928
		3.2501472550206736 -1.9901412163093147e-016 3.2501472550206776
		4.596402327759928 -1.3176762745105145e-031 2.1192772355499576e-015
		3.2501472550206807 1.9901412163093124e-016 -3.2501472550206736
		-5.2439454623326599e-016 2.8144846991423169e-016 -4.596402327759928
		-3.2501472550206754 1.9901412163093144e-016 -3.2501472550206754
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BF528D12-437D-FA13-BA63-A985E01E28C6";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "15B73CB2-4320-6364-046D-9E91C4D49033";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "69A48649-4E73-F747-4801-4499BCB182DF";
createNode displayLayerManager -n "layerManager";
	rename -uid "7D6E9F0F-4714-161E-FC99-C68BE91BDE57";
createNode displayLayer -n "defaultLayer";
	rename -uid "6B8005BC-4FEF-39C3-9369-D59118F7D650";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2105E71A-4BA6-9DD5-42C4-0AA814C90BB6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AEC68F64-4805-F55F-8297-EFAEA70923EA";
	setAttr ".g" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "C336D434-4534-FF59-5024-7EA5306A514E";
createNode reverse -n "reverse1";
	rename -uid "4D69F46E-4C60-719F-08DF-11B7BBB3CE79";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F80BFDAE-4A50-51EC-908C-DFADD9F43AAD";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 920\n            -height 341\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 920\n            -height 341\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 780\n            -height 708\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1281\n            -height 674\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 0\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n"
		+ "                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n"
		+ "                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1281\\n    -height 674\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1281\\n    -height 674\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E96C1117-4F67-F2D5-6799-7496E727C65A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "76BACD67-4B6F-8F29-C168-BF9BBBEC55D9";
	setAttr ".pee" yes;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -152.11685655626638 -998.29598710860216 ;
	setAttr ".tgi[0].vh" -type "double2" 1250.5089082773213 -324.33540119792372 ;
	setAttr -s 10 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -94.285713195800781;
	setAttr ".tgi[0].ni[0].y" -311.42855834960937;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" 686.20989990234375;
	setAttr ".tgi[0].ni[1].y" -347.9229736328125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 690.92718505859375;
	setAttr ".tgi[0].ni[2].y" -467.18319702148437;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -265.71429443359375;
	setAttr ".tgi[0].ni[3].y" 127.81511688232422;
	setAttr ".tgi[0].ni[3].nvs" 18305;
	setAttr ".tgi[0].ni[4].x" 149.72282409667969;
	setAttr ".tgi[0].ni[4].y" -358.67953491210937;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" 688.7413330078125;
	setAttr ".tgi[0].ni[5].y" -401.60720825195312;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 440.16226196289062;
	setAttr ".tgi[0].ni[6].y" -595.3135986328125;
	setAttr ".tgi[0].ni[6].nvs" 18306;
	setAttr ".tgi[0].ni[7].x" 697.99249267578125;
	setAttr ".tgi[0].ni[7].y" -538.77740478515625;
	setAttr ".tgi[0].ni[7].nvs" 18306;
	setAttr ".tgi[0].ni[8].x" 1000;
	setAttr ".tgi[0].ni[8].y" -691.4285888671875;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 980;
	setAttr ".tgi[0].ni[9].y" -561.4285888671875;
	setAttr ".tgi[0].ni[9].nvs" 18304;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Arm_1_FK_Jnt_scaleConstraint1.csx" "Arm_1_FK_Jnt.sx";
connectAttr "Arm_1_FK_Jnt_scaleConstraint1.csy" "Arm_1_FK_Jnt.sy";
connectAttr "Arm_1_FK_Jnt_scaleConstraint1.csz" "Arm_1_FK_Jnt.sz";
connectAttr "Arm_1_FK_Jnt_parentConstraint1.ctx" "Arm_1_FK_Jnt.tx";
connectAttr "Arm_1_FK_Jnt_parentConstraint1.cty" "Arm_1_FK_Jnt.ty";
connectAttr "Arm_1_FK_Jnt_parentConstraint1.ctz" "Arm_1_FK_Jnt.tz";
connectAttr "Arm_1_FK_Jnt_parentConstraint1.crx" "Arm_1_FK_Jnt.rx";
connectAttr "Arm_1_FK_Jnt_parentConstraint1.cry" "Arm_1_FK_Jnt.ry";
connectAttr "Arm_1_FK_Jnt_parentConstraint1.crz" "Arm_1_FK_Jnt.rz";
connectAttr "Arm_1_FK_Jnt.s" "Arm_2_FK_Jnt.is";
connectAttr "Arm_2_FK_Jnt_scaleConstraint1.csx" "Arm_2_FK_Jnt.sx";
connectAttr "Arm_2_FK_Jnt_scaleConstraint1.csy" "Arm_2_FK_Jnt.sy";
connectAttr "Arm_2_FK_Jnt_scaleConstraint1.csz" "Arm_2_FK_Jnt.sz";
connectAttr "Arm_2_FK_Jnt_parentConstraint1.ctx" "Arm_2_FK_Jnt.tx";
connectAttr "Arm_2_FK_Jnt_parentConstraint1.cty" "Arm_2_FK_Jnt.ty";
connectAttr "Arm_2_FK_Jnt_parentConstraint1.ctz" "Arm_2_FK_Jnt.tz";
connectAttr "Arm_2_FK_Jnt_parentConstraint1.crx" "Arm_2_FK_Jnt.rx";
connectAttr "Arm_2_FK_Jnt_parentConstraint1.cry" "Arm_2_FK_Jnt.ry";
connectAttr "Arm_2_FK_Jnt_parentConstraint1.crz" "Arm_2_FK_Jnt.rz";
connectAttr "Arm_2_FK_Jnt.s" "Arm_3_FK_Jnt.is";
connectAttr "Arm_3_FK_Jnt_parentConstraint1.ctx" "Arm_3_FK_Jnt.tx";
connectAttr "Arm_3_FK_Jnt_parentConstraint1.cty" "Arm_3_FK_Jnt.ty";
connectAttr "Arm_3_FK_Jnt_parentConstraint1.ctz" "Arm_3_FK_Jnt.tz";
connectAttr "Arm_3_FK_Jnt_parentConstraint1.crx" "Arm_3_FK_Jnt.rx";
connectAttr "Arm_3_FK_Jnt_parentConstraint1.cry" "Arm_3_FK_Jnt.ry";
connectAttr "Arm_3_FK_Jnt_parentConstraint1.crz" "Arm_3_FK_Jnt.rz";
connectAttr "Arm_3_FK_Jnt_scaleConstraint1.csx" "Arm_3_FK_Jnt.sx";
connectAttr "Arm_3_FK_Jnt_scaleConstraint1.csy" "Arm_3_FK_Jnt.sy";
connectAttr "Arm_3_FK_Jnt_scaleConstraint1.csz" "Arm_3_FK_Jnt.sz";
connectAttr "Arm_3_FK_Jnt.ro" "Arm_3_FK_Jnt_parentConstraint1.cro";
connectAttr "Arm_3_FK_Jnt.pim" "Arm_3_FK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_3_FK_Jnt.rp" "Arm_3_FK_Jnt_parentConstraint1.crp";
connectAttr "Arm_3_FK_Jnt.rpt" "Arm_3_FK_Jnt_parentConstraint1.crt";
connectAttr "Arm_3_FK_Jnt.jo" "Arm_3_FK_Jnt_parentConstraint1.cjo";
connectAttr "Arm_3_FK_Ctrl.t" "Arm_3_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_3_FK_Ctrl.rp" "Arm_3_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_3_FK_Ctrl.rpt" "Arm_3_FK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_3_FK_Ctrl.r" "Arm_3_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_3_FK_Ctrl.ro" "Arm_3_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_3_FK_Ctrl.s" "Arm_3_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_3_FK_Ctrl.pm" "Arm_3_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_3_FK_Jnt_parentConstraint1.w0" "Arm_3_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_3_FK_Jnt.ssc" "Arm_3_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Arm_3_FK_Jnt.pim" "Arm_3_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Arm_3_FK_Ctrl.s" "Arm_3_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Arm_3_FK_Ctrl.pm" "Arm_3_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_3_FK_Jnt_scaleConstraint1.w0" "Arm_3_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_2_FK_Jnt.ssc" "Arm_2_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Arm_2_FK_Jnt.pim" "Arm_2_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Arm_2_FK_Ctrl.s" "Arm_2_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Arm_2_FK_Ctrl.pm" "Arm_2_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_2_FK_Jnt_scaleConstraint1.w0" "Arm_2_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_2_FK_Jnt.ro" "Arm_2_FK_Jnt_parentConstraint1.cro";
connectAttr "Arm_2_FK_Jnt.pim" "Arm_2_FK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_2_FK_Jnt.rp" "Arm_2_FK_Jnt_parentConstraint1.crp";
connectAttr "Arm_2_FK_Jnt.rpt" "Arm_2_FK_Jnt_parentConstraint1.crt";
connectAttr "Arm_2_FK_Jnt.jo" "Arm_2_FK_Jnt_parentConstraint1.cjo";
connectAttr "Arm_2_FK_Ctrl.t" "Arm_2_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_2_FK_Ctrl.rp" "Arm_2_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_2_FK_Ctrl.rpt" "Arm_2_FK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_2_FK_Ctrl.r" "Arm_2_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_2_FK_Ctrl.ro" "Arm_2_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_2_FK_Ctrl.s" "Arm_2_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_2_FK_Ctrl.pm" "Arm_2_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_2_FK_Jnt_parentConstraint1.w0" "Arm_2_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_1_FK_Jnt.ro" "Arm_1_FK_Jnt_parentConstraint1.cro";
connectAttr "Arm_1_FK_Jnt.pim" "Arm_1_FK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_1_FK_Jnt.rp" "Arm_1_FK_Jnt_parentConstraint1.crp";
connectAttr "Arm_1_FK_Jnt.rpt" "Arm_1_FK_Jnt_parentConstraint1.crt";
connectAttr "Arm_1_FK_Jnt.jo" "Arm_1_FK_Jnt_parentConstraint1.cjo";
connectAttr "Arm_1_FK_Ctrl.t" "Arm_1_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_1_FK_Ctrl.rp" "Arm_1_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_1_FK_Ctrl.rpt" "Arm_1_FK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_1_FK_Ctrl.r" "Arm_1_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_1_FK_Ctrl.ro" "Arm_1_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_1_FK_Ctrl.s" "Arm_1_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_1_FK_Ctrl.pm" "Arm_1_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_1_FK_Jnt_parentConstraint1.w0" "Arm_1_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_1_FK_Jnt.pim" "Arm_1_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Arm_1_FK_Ctrl.s" "Arm_1_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Arm_1_FK_Ctrl.pm" "Arm_1_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_1_FK_Jnt_scaleConstraint1.w0" "Arm_1_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_1_IK_Jnt_scaleConstraint1.csx" "Arm_1_IK_Jnt.sx";
connectAttr "Arm_1_IK_Jnt_scaleConstraint1.csy" "Arm_1_IK_Jnt.sy";
connectAttr "Arm_1_IK_Jnt_scaleConstraint1.csz" "Arm_1_IK_Jnt.sz";
connectAttr "Arm_1_IK_Jnt_parentConstraint1.ctx" "Arm_1_IK_Jnt.tx";
connectAttr "Arm_1_IK_Jnt_parentConstraint1.cty" "Arm_1_IK_Jnt.ty";
connectAttr "Arm_1_IK_Jnt_parentConstraint1.ctz" "Arm_1_IK_Jnt.tz";
connectAttr "Arm_1_IK_Jnt_parentConstraint1.crx" "Arm_1_IK_Jnt.rx";
connectAttr "Arm_1_IK_Jnt_parentConstraint1.cry" "Arm_1_IK_Jnt.ry";
connectAttr "Arm_1_IK_Jnt_parentConstraint1.crz" "Arm_1_IK_Jnt.rz";
connectAttr "Arm_1_IK_Jnt.s" "Arm_2_IK_Jnt.is";
connectAttr "Arm_2_IK_Jnt.s" "Arm_3_IK_Jnt.is";
connectAttr "Arm_3_IK_Jnt.tx" "effector1.tx";
connectAttr "Arm_3_IK_Jnt.ty" "effector1.ty";
connectAttr "Arm_3_IK_Jnt.tz" "effector1.tz";
connectAttr "Arm_1_IK_Jnt.ro" "Arm_1_IK_Jnt_parentConstraint1.cro";
connectAttr "Arm_1_IK_Jnt.pim" "Arm_1_IK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_1_IK_Jnt.rp" "Arm_1_IK_Jnt_parentConstraint1.crp";
connectAttr "Arm_1_IK_Jnt.rpt" "Arm_1_IK_Jnt_parentConstraint1.crt";
connectAttr "Arm_1_IK_Jnt.jo" "Arm_1_IK_Jnt_parentConstraint1.cjo";
connectAttr "Arm_1_IK_Ctrl.t" "Arm_1_IK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_1_IK_Ctrl.rp" "Arm_1_IK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_1_IK_Ctrl.rpt" "Arm_1_IK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_1_IK_Ctrl.r" "Arm_1_IK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_1_IK_Ctrl.ro" "Arm_1_IK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_1_IK_Ctrl.s" "Arm_1_IK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_1_IK_Ctrl.pm" "Arm_1_IK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_1_IK_Jnt_parentConstraint1.w0" "Arm_1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_1_IK_Jnt.pim" "Arm_1_IK_Jnt_scaleConstraint1.cpim";
connectAttr "Arm_1_IK_Ctrl.s" "Arm_1_IK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Arm_1_IK_Ctrl.pm" "Arm_1_IK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_1_IK_Jnt_scaleConstraint1.w0" "Arm_1_IK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_1_RK_Jnt_parentConstraint1.ctx" "Arm_1_RK_Jnt.tx";
connectAttr "Arm_1_RK_Jnt_parentConstraint1.cty" "Arm_1_RK_Jnt.ty";
connectAttr "Arm_1_RK_Jnt_parentConstraint1.ctz" "Arm_1_RK_Jnt.tz";
connectAttr "Arm_1_RK_Jnt_parentConstraint1.crx" "Arm_1_RK_Jnt.rx";
connectAttr "Arm_1_RK_Jnt_parentConstraint1.cry" "Arm_1_RK_Jnt.ry";
connectAttr "Arm_1_RK_Jnt_parentConstraint1.crz" "Arm_1_RK_Jnt.rz";
connectAttr "Arm_1_RK_Jnt.s" "Arm_2_RK_Jnt.is";
connectAttr "Arm_2_RK_Jnt_parentConstraint1.ctx" "Arm_2_RK_Jnt.tx";
connectAttr "Arm_2_RK_Jnt_parentConstraint1.cty" "Arm_2_RK_Jnt.ty";
connectAttr "Arm_2_RK_Jnt_parentConstraint1.ctz" "Arm_2_RK_Jnt.tz";
connectAttr "Arm_2_RK_Jnt_parentConstraint1.crx" "Arm_2_RK_Jnt.rx";
connectAttr "Arm_2_RK_Jnt_parentConstraint1.cry" "Arm_2_RK_Jnt.ry";
connectAttr "Arm_2_RK_Jnt_parentConstraint1.crz" "Arm_2_RK_Jnt.rz";
connectAttr "Arm_2_RK_Jnt.s" "Arm_3_RK_Jnt.is";
connectAttr "Arm_3_RK_Jnt_parentConstraint1.ctx" "Arm_3_RK_Jnt.tx";
connectAttr "Arm_3_RK_Jnt_parentConstraint1.cty" "Arm_3_RK_Jnt.ty";
connectAttr "Arm_3_RK_Jnt_parentConstraint1.ctz" "Arm_3_RK_Jnt.tz";
connectAttr "Arm_3_RK_Jnt_parentConstraint1.crx" "Arm_3_RK_Jnt.rx";
connectAttr "Arm_3_RK_Jnt_parentConstraint1.cry" "Arm_3_RK_Jnt.ry";
connectAttr "Arm_3_RK_Jnt_parentConstraint1.crz" "Arm_3_RK_Jnt.rz";
connectAttr "Arm_3_RK_Jnt.ro" "Arm_3_RK_Jnt_parentConstraint1.cro";
connectAttr "Arm_3_RK_Jnt.pim" "Arm_3_RK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_3_RK_Jnt.rp" "Arm_3_RK_Jnt_parentConstraint1.crp";
connectAttr "Arm_3_RK_Jnt.rpt" "Arm_3_RK_Jnt_parentConstraint1.crt";
connectAttr "Arm_3_RK_Jnt.jo" "Arm_3_RK_Jnt_parentConstraint1.cjo";
connectAttr "Arm_3_FK_Jnt.t" "Arm_3_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_3_FK_Jnt.rp" "Arm_3_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_3_FK_Jnt.rpt" "Arm_3_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_3_FK_Jnt.r" "Arm_3_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_3_FK_Jnt.ro" "Arm_3_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_3_FK_Jnt.s" "Arm_3_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_3_FK_Jnt.pm" "Arm_3_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_3_FK_Jnt.jo" "Arm_3_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "Arm_3_FK_Jnt.ssc" "Arm_3_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "Arm_3_FK_Jnt.is" "Arm_3_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "Arm_3_RK_Jnt_parentConstraint1.w0" "Arm_3_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_3_IK_Jnt.t" "Arm_3_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "Arm_3_IK_Jnt.rp" "Arm_3_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "Arm_3_IK_Jnt.rpt" "Arm_3_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "Arm_3_IK_Jnt.r" "Arm_3_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "Arm_3_IK_Jnt.ro" "Arm_3_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "Arm_3_IK_Jnt.s" "Arm_3_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "Arm_3_IK_Jnt.pm" "Arm_3_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "Arm_3_IK_Jnt.jo" "Arm_3_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "Arm_3_IK_Jnt.ssc" "Arm_3_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "Arm_3_IK_Jnt.is" "Arm_3_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "Arm_3_RK_Jnt_parentConstraint1.w1" "Arm_3_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "FKIK_Switch.FKIKSwitch" "Arm_3_RK_Jnt_parentConstraint1.w0";
connectAttr "reverse1.ox" "Arm_3_RK_Jnt_parentConstraint1.w1";
connectAttr "Arm_2_RK_Jnt.ro" "Arm_2_RK_Jnt_parentConstraint1.cro";
connectAttr "Arm_2_RK_Jnt.pim" "Arm_2_RK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_2_RK_Jnt.rp" "Arm_2_RK_Jnt_parentConstraint1.crp";
connectAttr "Arm_2_RK_Jnt.rpt" "Arm_2_RK_Jnt_parentConstraint1.crt";
connectAttr "Arm_2_RK_Jnt.jo" "Arm_2_RK_Jnt_parentConstraint1.cjo";
connectAttr "Arm_2_FK_Jnt.t" "Arm_2_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_2_FK_Jnt.rp" "Arm_2_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_2_FK_Jnt.rpt" "Arm_2_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_2_FK_Jnt.r" "Arm_2_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_2_FK_Jnt.ro" "Arm_2_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_2_FK_Jnt.s" "Arm_2_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_2_FK_Jnt.pm" "Arm_2_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_2_FK_Jnt.jo" "Arm_2_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "Arm_2_FK_Jnt.ssc" "Arm_2_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "Arm_2_FK_Jnt.is" "Arm_2_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "Arm_2_RK_Jnt_parentConstraint1.w0" "Arm_2_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_2_IK_Jnt.t" "Arm_2_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "Arm_2_IK_Jnt.rp" "Arm_2_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "Arm_2_IK_Jnt.rpt" "Arm_2_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "Arm_2_IK_Jnt.r" "Arm_2_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "Arm_2_IK_Jnt.ro" "Arm_2_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "Arm_2_IK_Jnt.s" "Arm_2_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "Arm_2_IK_Jnt.pm" "Arm_2_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "Arm_2_IK_Jnt.jo" "Arm_2_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "Arm_2_IK_Jnt.ssc" "Arm_2_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "Arm_2_IK_Jnt.is" "Arm_2_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "Arm_2_RK_Jnt_parentConstraint1.w1" "Arm_2_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "FKIK_Switch.FKIKSwitch" "Arm_2_RK_Jnt_parentConstraint1.w0";
connectAttr "reverse1.ox" "Arm_2_RK_Jnt_parentConstraint1.w1";
connectAttr "Arm_1_RK_Jnt.ro" "Arm_1_RK_Jnt_parentConstraint1.cro";
connectAttr "Arm_1_RK_Jnt.pim" "Arm_1_RK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_1_RK_Jnt.rp" "Arm_1_RK_Jnt_parentConstraint1.crp";
connectAttr "Arm_1_RK_Jnt.rpt" "Arm_1_RK_Jnt_parentConstraint1.crt";
connectAttr "Arm_1_RK_Jnt.jo" "Arm_1_RK_Jnt_parentConstraint1.cjo";
connectAttr "Arm_1_FK_Jnt.t" "Arm_1_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_1_FK_Jnt.rp" "Arm_1_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_1_FK_Jnt.rpt" "Arm_1_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_1_FK_Jnt.r" "Arm_1_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_1_FK_Jnt.ro" "Arm_1_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_1_FK_Jnt.s" "Arm_1_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_1_FK_Jnt.pm" "Arm_1_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_1_FK_Jnt.jo" "Arm_1_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "Arm_1_FK_Jnt.ssc" "Arm_1_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "Arm_1_FK_Jnt.is" "Arm_1_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "Arm_1_RK_Jnt_parentConstraint1.w0" "Arm_1_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_1_IK_Jnt.t" "Arm_1_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "Arm_1_IK_Jnt.rp" "Arm_1_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "Arm_1_IK_Jnt.rpt" "Arm_1_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "Arm_1_IK_Jnt.r" "Arm_1_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "Arm_1_IK_Jnt.ro" "Arm_1_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "Arm_1_IK_Jnt.s" "Arm_1_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "Arm_1_IK_Jnt.pm" "Arm_1_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "Arm_1_IK_Jnt.jo" "Arm_1_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "Arm_1_IK_Jnt.ssc" "Arm_1_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "Arm_1_IK_Jnt.is" "Arm_1_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "Arm_1_RK_Jnt_parentConstraint1.w1" "Arm_1_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "FKIK_Switch.FKIKSwitch" "Arm_1_RK_Jnt_parentConstraint1.w0";
connectAttr "reverse1.ox" "Arm_1_RK_Jnt_parentConstraint1.w1";
connectAttr "FKIK_Switch.FKIKSwitch" "Arm_1_FK_Ctrl_Grp.v";
connectAttr "reverse1.ox" "Arm_IK_Ctrl_Grp.v";
connectAttr "Arm_1_IK_Jnt.msg" "Arm_3_IK_Handle.hsj";
connectAttr "effector1.hp" "Arm_3_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "Arm_3_IK_Handle.hsv";
connectAttr "Arm_3_IK_Handle_poleVectorConstraint1.ctx" "Arm_3_IK_Handle.pvx";
connectAttr "Arm_3_IK_Handle_poleVectorConstraint1.cty" "Arm_3_IK_Handle.pvy";
connectAttr "Arm_3_IK_Handle_poleVectorConstraint1.ctz" "Arm_3_IK_Handle.pvz";
connectAttr "Arm_3_IK_Handle.pim" "Arm_3_IK_Handle_poleVectorConstraint1.cpim";
connectAttr "Arm_1_IK_Jnt.pm" "Arm_3_IK_Handle_poleVectorConstraint1.ps";
connectAttr "Arm_1_IK_Jnt.t" "Arm_3_IK_Handle_poleVectorConstraint1.crp";
connectAttr "Arm_2_IK_Ctrl.t" "Arm_3_IK_Handle_poleVectorConstraint1.tg[0].tt";
connectAttr "Arm_2_IK_Ctrl.rp" "Arm_3_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Arm_2_IK_Ctrl.rpt" "Arm_3_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Arm_2_IK_Ctrl.pm" "Arm_3_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Arm_3_IK_Handle_poleVectorConstraint1.w0" "Arm_3_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "FKIK_Switch.FKIKSwitch" "reverse1.ix";
connectAttr "FKIK_Switch.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "Arm_3_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Arm_1_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "FKIK_SwitchShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "reverse1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "Arm_2_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Arm_1_FK_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Arm_IK_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of RK Switch.ma
