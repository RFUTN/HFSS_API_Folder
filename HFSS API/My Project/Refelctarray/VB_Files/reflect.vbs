Dim oHfssApp
Dim oDesktop
Dim oProject
Dim oDesign
Dim oEditor
Dim oModule

Set oHfssApp  = CreateObject("AnsoftHfss.HfssScriptInterface")
Set oDesktop = oHfssApp.GetAppDesktop()
oDesktop.RestoreWindow
oDesktop.NewProject
Set oProject = oDesktop.GetActiveProject

oProject.InsertDesign "HFSS", "REFLECT_ARRAY", "DrivenModal", ""
Set oDesign = oProject.SetActiveDesign("REFLECT_ARRAY")
Set oEditor = oDesign.SetActiveEditor("3D Modeler")

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-115.0000mm", "Y:=", "-115.0000mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "115.0000mm", "Y:=", "-115.0000mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "115.0000mm", "Y:=", "-345.0000mm", "Z:=", "97.6292mm"), _
			Array("NAME:PLPoint", "X:=", "-115.0000mm", "Y:=", "-345.0000mm", "Z:=", "97.6292mm"), _
			Array("NAME:PLPoint", "X:=", "-115.0000mm",   "Y:=", "-115.0000mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "p1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.ThickenSheet _
Array("NAME:Selections", _
"Selections:=", "p1", _
"NewPartsModelFlag:=", _
"Model"), _
Array("NAME:SheetThickenParameters", _
"Thickness:=", "1.500000mm", _
"BothSides:=", false)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-100.7276mm", "Y:=", "-122.5517mm", "Z:=", "3.2055mm"), _
			Array("NAME:PLPoint", "X:=", "-91.2724mm", "Y:=", "-122.5517mm", "Z:=", "3.2055mm"), _
			Array("NAME:PLPoint", "X:=", "-91.2724mm", "Y:=", "-131.2552mm", "Z:=", "6.8999mm"), _
			Array("NAME:PLPoint", "X:=", "-100.7276mm", "Y:=", "-131.2552mm", "Z:=", "6.8999mm"), _
			Array("NAME:PLPoint", "X:=", "-100.7276mm",   "Y:=", "-122.5517mm",   "Z:=", "3.2055mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-84.7943mm", "Y:=", "-122.4903mm", "Z:=", "3.1794mm"), _
			Array("NAME:PLPoint", "X:=", "-75.2057mm", "Y:=", "-122.4903mm", "Z:=", "3.1794mm"), _
			Array("NAME:PLPoint", "X:=", "-75.2057mm", "Y:=", "-131.3166mm", "Z:=", "6.9260mm"), _
			Array("NAME:PLPoint", "X:=", "-84.7943mm", "Y:=", "-131.3166mm", "Z:=", "6.9260mm"), _
			Array("NAME:PLPoint", "X:=", "-84.7943mm",   "Y:=", "-122.4903mm",   "Z:=", "3.1794mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.8527mm", "Y:=", "-122.4365mm", "Z:=", "3.1566mm"), _
			Array("NAME:PLPoint", "X:=", "-59.1473mm", "Y:=", "-122.4365mm", "Z:=", "3.1566mm"), _
			Array("NAME:PLPoint", "X:=", "-59.1473mm", "Y:=", "-131.3704mm", "Z:=", "6.9488mm"), _
			Array("NAME:PLPoint", "X:=", "-68.8527mm", "Y:=", "-131.3704mm", "Z:=", "6.9488mm"), _
			Array("NAME:PLPoint", "X:=", "-68.8527mm",   "Y:=", "-122.4365mm",   "Z:=", "3.1566mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.9142mm", "Y:=", "-122.3800mm", "Z:=", "3.1326mm"), _
			Array("NAME:PLPoint", "X:=", "-43.0858mm", "Y:=", "-122.3800mm", "Z:=", "3.1326mm"), _
			Array("NAME:PLPoint", "X:=", "-43.0858mm", "Y:=", "-131.4270mm", "Z:=", "6.9728mm"), _
			Array("NAME:PLPoint", "X:=", "-52.9142mm", "Y:=", "-131.4270mm", "Z:=", "6.9728mm"), _
			Array("NAME:PLPoint", "X:=", "-52.9142mm",   "Y:=", "-122.3800mm",   "Z:=", "3.1326mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.9778mm", "Y:=", "-122.3214mm", "Z:=", "3.1078mm"), _
			Array("NAME:PLPoint", "X:=", "-27.0222mm", "Y:=", "-122.3214mm", "Z:=", "3.1078mm"), _
			Array("NAME:PLPoint", "X:=", "-27.0222mm", "Y:=", "-131.4855mm", "Z:=", "6.9977mm"), _
			Array("NAME:PLPoint", "X:=", "-36.9778mm", "Y:=", "-131.4855mm", "Z:=", "6.9977mm"), _
			Array("NAME:PLPoint", "X:=", "-36.9778mm",   "Y:=", "-122.3214mm",   "Z:=", "3.1078mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-21.0437mm", "Y:=", "-122.2607mm", "Z:=", "3.0820mm"), _
			Array("NAME:PLPoint", "X:=", "-10.9563mm", "Y:=", "-122.2607mm", "Z:=", "3.0820mm"), _
			Array("NAME:PLPoint", "X:=", "-10.9563mm", "Y:=", "-131.5462mm", "Z:=", "7.0234mm"), _
			Array("NAME:PLPoint", "X:=", "-21.0437mm", "Y:=", "-131.5462mm", "Z:=", "7.0234mm"), _
			Array("NAME:PLPoint", "X:=", "-21.0437mm",   "Y:=", "-122.2607mm",   "Z:=", "3.0820mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-5.0707mm", "Y:=", "-122.2358mm", "Z:=", "3.0714mm"), _
			Array("NAME:PLPoint", "X:=", "5.0707mm", "Y:=", "-122.2358mm", "Z:=", "3.0714mm"), _
			Array("NAME:PLPoint", "X:=", "5.0707mm", "Y:=", "-131.5711mm", "Z:=", "7.0340mm"), _
			Array("NAME:PLPoint", "X:=", "-5.0707mm", "Y:=", "-131.5711mm", "Z:=", "7.0340mm"), _
			Array("NAME:PLPoint", "X:=", "-5.0707mm",   "Y:=", "-122.2358mm",   "Z:=", "3.0714mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "10.9563mm", "Y:=", "-122.2607mm", "Z:=", "3.0820mm"), _
			Array("NAME:PLPoint", "X:=", "21.0437mm", "Y:=", "-122.2607mm", "Z:=", "3.0820mm"), _
			Array("NAME:PLPoint", "X:=", "21.0437mm", "Y:=", "-131.5462mm", "Z:=", "7.0234mm"), _
			Array("NAME:PLPoint", "X:=", "10.9563mm", "Y:=", "-131.5462mm", "Z:=", "7.0234mm"), _
			Array("NAME:PLPoint", "X:=", "10.9563mm",   "Y:=", "-122.2607mm",   "Z:=", "3.0820mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.0222mm", "Y:=", "-122.3214mm", "Z:=", "3.1078mm"), _
			Array("NAME:PLPoint", "X:=", "36.9778mm", "Y:=", "-122.3214mm", "Z:=", "3.1078mm"), _
			Array("NAME:PLPoint", "X:=", "36.9778mm", "Y:=", "-131.4855mm", "Z:=", "6.9977mm"), _
			Array("NAME:PLPoint", "X:=", "27.0222mm", "Y:=", "-131.4855mm", "Z:=", "6.9977mm"), _
			Array("NAME:PLPoint", "X:=", "27.0222mm",   "Y:=", "-122.3214mm",   "Z:=", "3.1078mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.0858mm", "Y:=", "-122.3800mm", "Z:=", "3.1326mm"), _
			Array("NAME:PLPoint", "X:=", "52.9142mm", "Y:=", "-122.3800mm", "Z:=", "3.1326mm"), _
			Array("NAME:PLPoint", "X:=", "52.9142mm", "Y:=", "-131.4270mm", "Z:=", "6.9728mm"), _
			Array("NAME:PLPoint", "X:=", "43.0858mm", "Y:=", "-131.4270mm", "Z:=", "6.9728mm"), _
			Array("NAME:PLPoint", "X:=", "43.0858mm",   "Y:=", "-122.3800mm",   "Z:=", "3.1326mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.1473mm", "Y:=", "-122.4365mm", "Z:=", "3.1566mm"), _
			Array("NAME:PLPoint", "X:=", "68.8527mm", "Y:=", "-122.4365mm", "Z:=", "3.1566mm"), _
			Array("NAME:PLPoint", "X:=", "68.8527mm", "Y:=", "-131.3704mm", "Z:=", "6.9488mm"), _
			Array("NAME:PLPoint", "X:=", "59.1473mm", "Y:=", "-131.3704mm", "Z:=", "6.9488mm"), _
			Array("NAME:PLPoint", "X:=", "59.1473mm",   "Y:=", "-122.4365mm",   "Z:=", "3.1566mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "75.2057mm", "Y:=", "-122.4903mm", "Z:=", "3.1794mm"), _
			Array("NAME:PLPoint", "X:=", "84.7943mm", "Y:=", "-122.4903mm", "Z:=", "3.1794mm"), _
			Array("NAME:PLPoint", "X:=", "84.7943mm", "Y:=", "-131.3166mm", "Z:=", "6.9260mm"), _
			Array("NAME:PLPoint", "X:=", "75.2057mm", "Y:=", "-131.3166mm", "Z:=", "6.9260mm"), _
			Array("NAME:PLPoint", "X:=", "75.2057mm",   "Y:=", "-122.4903mm",   "Z:=", "3.1794mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "91.2724mm", "Y:=", "-122.5517mm", "Z:=", "3.2055mm"), _
			Array("NAME:PLPoint", "X:=", "100.7276mm", "Y:=", "-122.5517mm", "Z:=", "3.2055mm"), _
			Array("NAME:PLPoint", "X:=", "100.7276mm", "Y:=", "-131.2552mm", "Z:=", "6.8999mm"), _
			Array("NAME:PLPoint", "X:=", "91.2724mm", "Y:=", "-131.2552mm", "Z:=", "6.8999mm"), _
			Array("NAME:PLPoint", "X:=", "91.2724mm",   "Y:=", "-122.5517mm",   "Z:=", "3.2055mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_1_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-100.7946mm", "Y:=", "-137.2181mm", "Z:=", "9.4310mm"), _
			Array("NAME:PLPoint", "X:=", "-91.2054mm", "Y:=", "-137.2181mm", "Z:=", "9.4310mm"), _
			Array("NAME:PLPoint", "X:=", "-91.2054mm", "Y:=", "-146.0450mm", "Z:=", "13.1778mm"), _
			Array("NAME:PLPoint", "X:=", "-100.7946mm", "Y:=", "-146.0450mm", "Z:=", "13.1778mm"), _
			Array("NAME:PLPoint", "X:=", "-100.7946mm",   "Y:=", "-137.2181mm",   "Z:=", "9.4310mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-84.8700mm", "Y:=", "-137.1487mm", "Z:=", "9.4016mm"), _
			Array("NAME:PLPoint", "X:=", "-75.1300mm", "Y:=", "-137.1487mm", "Z:=", "9.4016mm"), _
			Array("NAME:PLPoint", "X:=", "-75.1300mm", "Y:=", "-146.1144mm", "Z:=", "13.2073mm"), _
			Array("NAME:PLPoint", "X:=", "-84.8700mm", "Y:=", "-146.1144mm", "Z:=", "13.2073mm"), _
			Array("NAME:PLPoint", "X:=", "-84.8700mm",   "Y:=", "-137.1487mm",   "Z:=", "9.4016mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.9585mm", "Y:=", "-137.0672mm", "Z:=", "9.3670mm"), _
			Array("NAME:PLPoint", "X:=", "-59.0415mm", "Y:=", "-137.0672mm", "Z:=", "9.3670mm"), _
			Array("NAME:PLPoint", "X:=", "-59.0415mm", "Y:=", "-146.1958mm", "Z:=", "13.2418mm"), _
			Array("NAME:PLPoint", "X:=", "-68.9585mm", "Y:=", "-146.1958mm", "Z:=", "13.2418mm"), _
			Array("NAME:PLPoint", "X:=", "-68.9585mm",   "Y:=", "-137.0672mm",   "Z:=", "9.3670mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-53.1436mm", "Y:=", "-136.8968mm", "Z:=", "9.2946mm"), _
			Array("NAME:PLPoint", "X:=", "-42.8564mm", "Y:=", "-136.8968mm", "Z:=", "9.2946mm"), _
			Array("NAME:PLPoint", "X:=", "-42.8564mm", "Y:=", "-146.3663mm", "Z:=", "13.3142mm"), _
			Array("NAME:PLPoint", "X:=", "-53.1436mm", "Y:=", "-146.3663mm", "Z:=", "13.3142mm"), _
			Array("NAME:PLPoint", "X:=", "-53.1436mm",   "Y:=", "-136.8968mm",   "Z:=", "9.2946mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-37.6588mm", "Y:=", "-136.4226mm", "Z:=", "9.0933mm"), _
			Array("NAME:PLPoint", "X:=", "-26.3412mm", "Y:=", "-136.4226mm", "Z:=", "9.0933mm"), _
			Array("NAME:PLPoint", "X:=", "-26.3412mm", "Y:=", "-146.8405mm", "Z:=", "13.5155mm"), _
			Array("NAME:PLPoint", "X:=", "-37.6588mm", "Y:=", "-146.8405mm", "Z:=", "13.5155mm"), _
			Array("NAME:PLPoint", "X:=", "-37.6588mm",   "Y:=", "-136.4226mm",   "Z:=", "9.0933mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-21.5204mm", "Y:=", "-136.5500mm", "Z:=", "9.1474mm"), _
			Array("NAME:PLPoint", "X:=", "-10.4796mm", "Y:=", "-136.5500mm", "Z:=", "9.1474mm"), _
			Array("NAME:PLPoint", "X:=", "-10.4796mm", "Y:=", "-146.7131mm", "Z:=", "13.4614mm"), _
			Array("NAME:PLPoint", "X:=", "-21.5204mm", "Y:=", "-146.7131mm", "Z:=", "13.4614mm"), _
			Array("NAME:PLPoint", "X:=", "-21.5204mm",   "Y:=", "-136.5500mm",   "Z:=", "9.1474mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.0524mm", "Y:=", "-137.9012mm", "Z:=", "9.7210mm"), _
			Array("NAME:PLPoint", "X:=", "4.0524mm", "Y:=", "-137.9012mm", "Z:=", "9.7210mm"), _
			Array("NAME:PLPoint", "X:=", "4.0524mm", "Y:=", "-145.3618mm", "Z:=", "12.8878mm"), _
			Array("NAME:PLPoint", "X:=", "-4.0524mm", "Y:=", "-145.3618mm", "Z:=", "12.8878mm"), _
			Array("NAME:PLPoint", "X:=", "-4.0524mm",   "Y:=", "-137.9012mm",   "Z:=", "9.7210mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "10.4796mm", "Y:=", "-136.5500mm", "Z:=", "9.1474mm"), _
			Array("NAME:PLPoint", "X:=", "21.5204mm", "Y:=", "-136.5500mm", "Z:=", "9.1474mm"), _
			Array("NAME:PLPoint", "X:=", "21.5204mm", "Y:=", "-146.7131mm", "Z:=", "13.4614mm"), _
			Array("NAME:PLPoint", "X:=", "10.4796mm", "Y:=", "-146.7131mm", "Z:=", "13.4614mm"), _
			Array("NAME:PLPoint", "X:=", "10.4796mm",   "Y:=", "-136.5500mm",   "Z:=", "9.1474mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "26.3412mm", "Y:=", "-136.4226mm", "Z:=", "9.0933mm"), _
			Array("NAME:PLPoint", "X:=", "37.6588mm", "Y:=", "-136.4226mm", "Z:=", "9.0933mm"), _
			Array("NAME:PLPoint", "X:=", "37.6588mm", "Y:=", "-146.8405mm", "Z:=", "13.5155mm"), _
			Array("NAME:PLPoint", "X:=", "26.3412mm", "Y:=", "-146.8405mm", "Z:=", "13.5155mm"), _
			Array("NAME:PLPoint", "X:=", "26.3412mm",   "Y:=", "-136.4226mm",   "Z:=", "9.0933mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "42.8564mm", "Y:=", "-136.8968mm", "Z:=", "9.2946mm"), _
			Array("NAME:PLPoint", "X:=", "53.1436mm", "Y:=", "-136.8968mm", "Z:=", "9.2946mm"), _
			Array("NAME:PLPoint", "X:=", "53.1436mm", "Y:=", "-146.3663mm", "Z:=", "13.3142mm"), _
			Array("NAME:PLPoint", "X:=", "42.8564mm", "Y:=", "-146.3663mm", "Z:=", "13.3142mm"), _
			Array("NAME:PLPoint", "X:=", "42.8564mm",   "Y:=", "-136.8968mm",   "Z:=", "9.2946mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.0415mm", "Y:=", "-137.0672mm", "Z:=", "9.3670mm"), _
			Array("NAME:PLPoint", "X:=", "68.9585mm", "Y:=", "-137.0672mm", "Z:=", "9.3670mm"), _
			Array("NAME:PLPoint", "X:=", "68.9585mm", "Y:=", "-146.1958mm", "Z:=", "13.2418mm"), _
			Array("NAME:PLPoint", "X:=", "59.0415mm", "Y:=", "-146.1958mm", "Z:=", "13.2418mm"), _
			Array("NAME:PLPoint", "X:=", "59.0415mm",   "Y:=", "-137.0672mm",   "Z:=", "9.3670mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "75.1300mm", "Y:=", "-137.1487mm", "Z:=", "9.4016mm"), _
			Array("NAME:PLPoint", "X:=", "84.8700mm", "Y:=", "-137.1487mm", "Z:=", "9.4016mm"), _
			Array("NAME:PLPoint", "X:=", "84.8700mm", "Y:=", "-146.1144mm", "Z:=", "13.2073mm"), _
			Array("NAME:PLPoint", "X:=", "75.1300mm", "Y:=", "-146.1144mm", "Z:=", "13.2073mm"), _
			Array("NAME:PLPoint", "X:=", "75.1300mm",   "Y:=", "-137.1487mm",   "Z:=", "9.4016mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "91.2054mm", "Y:=", "-137.2181mm", "Z:=", "9.4310mm"), _
			Array("NAME:PLPoint", "X:=", "100.7946mm", "Y:=", "-137.2181mm", "Z:=", "9.4310mm"), _
			Array("NAME:PLPoint", "X:=", "100.7946mm", "Y:=", "-146.0450mm", "Z:=", "13.1778mm"), _
			Array("NAME:PLPoint", "X:=", "91.2054mm", "Y:=", "-146.0450mm", "Z:=", "13.1778mm"), _
			Array("NAME:PLPoint", "X:=", "91.2054mm",   "Y:=", "-137.2181mm",   "Z:=", "9.4310mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_2_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-100.8559mm", "Y:=", "-151.8897mm", "Z:=", "15.6588mm"), _
			Array("NAME:PLPoint", "X:=", "-91.1441mm", "Y:=", "-151.8897mm", "Z:=", "15.6588mm"), _
			Array("NAME:PLPoint", "X:=", "-91.1441mm", "Y:=", "-160.8295mm", "Z:=", "19.4535mm"), _
			Array("NAME:PLPoint", "X:=", "-100.8559mm", "Y:=", "-160.8295mm", "Z:=", "19.4535mm"), _
			Array("NAME:PLPoint", "X:=", "-100.8559mm",   "Y:=", "-151.8897mm",   "Z:=", "15.6588mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-84.9651mm", "Y:=", "-151.7892mm", "Z:=", "15.6161mm"), _
			Array("NAME:PLPoint", "X:=", "-75.0349mm", "Y:=", "-151.7892mm", "Z:=", "15.6161mm"), _
			Array("NAME:PLPoint", "X:=", "-75.0349mm", "Y:=", "-160.9300mm", "Z:=", "19.4961mm"), _
			Array("NAME:PLPoint", "X:=", "-84.9651mm", "Y:=", "-160.9300mm", "Z:=", "19.4961mm"), _
			Array("NAME:PLPoint", "X:=", "-84.9651mm",   "Y:=", "-151.7892mm",   "Z:=", "15.6161mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-69.2775mm", "Y:=", "-151.5017mm", "Z:=", "15.4940mm"), _
			Array("NAME:PLPoint", "X:=", "-58.7225mm", "Y:=", "-151.5017mm", "Z:=", "15.4940mm"), _
			Array("NAME:PLPoint", "X:=", "-58.7225mm", "Y:=", "-161.2176mm", "Z:=", "19.6182mm"), _
			Array("NAME:PLPoint", "X:=", "-69.2775mm", "Y:=", "-161.2176mm", "Z:=", "19.6182mm"), _
			Array("NAME:PLPoint", "X:=", "-69.2775mm",   "Y:=", "-151.5017mm",   "Z:=", "15.4940mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-51.5723mm", "Y:=", "-153.0713mm", "Z:=", "16.1603mm"), _
			Array("NAME:PLPoint", "X:=", "-44.4277mm", "Y:=", "-153.0713mm", "Z:=", "16.1603mm"), _
			Array("NAME:PLPoint", "X:=", "-44.4277mm", "Y:=", "-159.6479mm", "Z:=", "18.9519mm"), _
			Array("NAME:PLPoint", "X:=", "-51.5723mm", "Y:=", "-159.6479mm", "Z:=", "18.9519mm"), _
			Array("NAME:PLPoint", "X:=", "-51.5723mm",   "Y:=", "-153.0713mm",   "Z:=", "16.1603mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.1405mm", "Y:=", "-152.5483mm", "Z:=", "15.9383mm"), _
			Array("NAME:PLPoint", "X:=", "-27.8595mm", "Y:=", "-152.5483mm", "Z:=", "15.9383mm"), _
			Array("NAME:PLPoint", "X:=", "-27.8595mm", "Y:=", "-160.1709mm", "Z:=", "19.1739mm"), _
			Array("NAME:PLPoint", "X:=", "-36.1405mm", "Y:=", "-160.1709mm", "Z:=", "19.1739mm"), _
			Array("NAME:PLPoint", "X:=", "-36.1405mm",   "Y:=", "-152.5483mm",   "Z:=", "15.9383mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.3911mm", "Y:=", "-152.3176mm", "Z:=", "15.8404mm"), _
			Array("NAME:PLPoint", "X:=", "-11.6089mm", "Y:=", "-152.3176mm", "Z:=", "15.8404mm"), _
			Array("NAME:PLPoint", "X:=", "-11.6089mm", "Y:=", "-160.4017mm", "Z:=", "19.2719mm"), _
			Array("NAME:PLPoint", "X:=", "-20.3911mm", "Y:=", "-160.4017mm", "Z:=", "19.2719mm"), _
			Array("NAME:PLPoint", "X:=", "-20.3911mm",   "Y:=", "-152.3176mm",   "Z:=", "15.8404mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.4340mm", "Y:=", "-152.2781mm", "Z:=", "15.8236mm"), _
			Array("NAME:PLPoint", "X:=", "4.4340mm", "Y:=", "-152.2781mm", "Z:=", "15.8236mm"), _
			Array("NAME:PLPoint", "X:=", "4.4340mm", "Y:=", "-160.4411mm", "Z:=", "19.2886mm"), _
			Array("NAME:PLPoint", "X:=", "-4.4340mm", "Y:=", "-160.4411mm", "Z:=", "19.2886mm"), _
			Array("NAME:PLPoint", "X:=", "-4.4340mm",   "Y:=", "-152.2781mm",   "Z:=", "15.8236mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.6089mm", "Y:=", "-152.3176mm", "Z:=", "15.8404mm"), _
			Array("NAME:PLPoint", "X:=", "20.3911mm", "Y:=", "-152.3176mm", "Z:=", "15.8404mm"), _
			Array("NAME:PLPoint", "X:=", "20.3911mm", "Y:=", "-160.4017mm", "Z:=", "19.2719mm"), _
			Array("NAME:PLPoint", "X:=", "11.6089mm", "Y:=", "-160.4017mm", "Z:=", "19.2719mm"), _
			Array("NAME:PLPoint", "X:=", "11.6089mm",   "Y:=", "-152.3176mm",   "Z:=", "15.8404mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.8595mm", "Y:=", "-152.5483mm", "Z:=", "15.9383mm"), _
			Array("NAME:PLPoint", "X:=", "36.1405mm", "Y:=", "-152.5483mm", "Z:=", "15.9383mm"), _
			Array("NAME:PLPoint", "X:=", "36.1405mm", "Y:=", "-160.1709mm", "Z:=", "19.1739mm"), _
			Array("NAME:PLPoint", "X:=", "27.8595mm", "Y:=", "-160.1709mm", "Z:=", "19.1739mm"), _
			Array("NAME:PLPoint", "X:=", "27.8595mm",   "Y:=", "-152.5483mm",   "Z:=", "15.9383mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "44.4277mm", "Y:=", "-153.0713mm", "Z:=", "16.1603mm"), _
			Array("NAME:PLPoint", "X:=", "51.5723mm", "Y:=", "-153.0713mm", "Z:=", "16.1603mm"), _
			Array("NAME:PLPoint", "X:=", "51.5723mm", "Y:=", "-159.6479mm", "Z:=", "18.9519mm"), _
			Array("NAME:PLPoint", "X:=", "44.4277mm", "Y:=", "-159.6479mm", "Z:=", "18.9519mm"), _
			Array("NAME:PLPoint", "X:=", "44.4277mm",   "Y:=", "-153.0713mm",   "Z:=", "16.1603mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "58.7225mm", "Y:=", "-151.5017mm", "Z:=", "15.4940mm"), _
			Array("NAME:PLPoint", "X:=", "69.2775mm", "Y:=", "-151.5017mm", "Z:=", "15.4940mm"), _
			Array("NAME:PLPoint", "X:=", "69.2775mm", "Y:=", "-161.2176mm", "Z:=", "19.6182mm"), _
			Array("NAME:PLPoint", "X:=", "58.7225mm", "Y:=", "-161.2176mm", "Z:=", "19.6182mm"), _
			Array("NAME:PLPoint", "X:=", "58.7225mm",   "Y:=", "-151.5017mm",   "Z:=", "15.4940mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "75.0349mm", "Y:=", "-151.7892mm", "Z:=", "15.6161mm"), _
			Array("NAME:PLPoint", "X:=", "84.9651mm", "Y:=", "-151.7892mm", "Z:=", "15.6161mm"), _
			Array("NAME:PLPoint", "X:=", "84.9651mm", "Y:=", "-160.9300mm", "Z:=", "19.4961mm"), _
			Array("NAME:PLPoint", "X:=", "75.0349mm", "Y:=", "-160.9300mm", "Z:=", "19.4961mm"), _
			Array("NAME:PLPoint", "X:=", "75.0349mm",   "Y:=", "-151.7892mm",   "Z:=", "15.6161mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "91.1441mm", "Y:=", "-151.8897mm", "Z:=", "15.6588mm"), _
			Array("NAME:PLPoint", "X:=", "100.8559mm", "Y:=", "-151.8897mm", "Z:=", "15.6588mm"), _
			Array("NAME:PLPoint", "X:=", "100.8559mm", "Y:=", "-160.8295mm", "Z:=", "19.4535mm"), _
			Array("NAME:PLPoint", "X:=", "91.1441mm", "Y:=", "-160.8295mm", "Z:=", "19.4535mm"), _
			Array("NAME:PLPoint", "X:=", "91.1441mm",   "Y:=", "-151.8897mm",   "Z:=", "15.6588mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_3_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-100.9242mm", "Y:=", "-166.5549mm", "Z:=", "21.8838mm"), _
			Array("NAME:PLPoint", "X:=", "-91.0758mm", "Y:=", "-166.5549mm", "Z:=", "21.8838mm"), _
			Array("NAME:PLPoint", "X:=", "-91.0758mm", "Y:=", "-175.6204mm", "Z:=", "25.7318mm"), _
			Array("NAME:PLPoint", "X:=", "-100.9242mm", "Y:=", "-175.6204mm", "Z:=", "25.7318mm"), _
			Array("NAME:PLPoint", "X:=", "-100.9242mm",   "Y:=", "-166.5549mm",   "Z:=", "21.8838mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-85.1897mm", "Y:=", "-166.3105mm", "Z:=", "21.7800mm"), _
			Array("NAME:PLPoint", "X:=", "-74.8103mm", "Y:=", "-166.3105mm", "Z:=", "21.7800mm"), _
			Array("NAME:PLPoint", "X:=", "-74.8103mm", "Y:=", "-175.8648mm", "Z:=", "25.8356mm"), _
			Array("NAME:PLPoint", "X:=", "-85.1897mm", "Y:=", "-175.8648mm", "Z:=", "25.8356mm"), _
			Array("NAME:PLPoint", "X:=", "-85.1897mm",   "Y:=", "-166.3105mm",   "Z:=", "21.7800mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-66.6452mm", "Y:=", "-168.6527mm", "Z:=", "22.7742mm"), _
			Array("NAME:PLPoint", "X:=", "-61.3548mm", "Y:=", "-168.6527mm", "Z:=", "22.7742mm"), _
			Array("NAME:PLPoint", "X:=", "-61.3548mm", "Y:=", "-173.5226mm", "Z:=", "24.8414mm"), _
			Array("NAME:PLPoint", "X:=", "-66.6452mm", "Y:=", "-173.5226mm", "Z:=", "24.8414mm"), _
			Array("NAME:PLPoint", "X:=", "-66.6452mm",   "Y:=", "-168.6527mm",   "Z:=", "22.7742mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.3704mm", "Y:=", "-167.0647mm", "Z:=", "22.1002mm"), _
			Array("NAME:PLPoint", "X:=", "-43.6296mm", "Y:=", "-167.0647mm", "Z:=", "22.1002mm"), _
			Array("NAME:PLPoint", "X:=", "-43.6296mm", "Y:=", "-175.1106mm", "Z:=", "25.5155mm"), _
			Array("NAME:PLPoint", "X:=", "-52.3704mm", "Y:=", "-175.1106mm", "Z:=", "25.5155mm"), _
			Array("NAME:PLPoint", "X:=", "-52.3704mm",   "Y:=", "-167.0647mm",   "Z:=", "22.1002mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.5453mm", "Y:=", "-166.9038mm", "Z:=", "22.0318mm"), _
			Array("NAME:PLPoint", "X:=", "-27.4547mm", "Y:=", "-166.9038mm", "Z:=", "22.0318mm"), _
			Array("NAME:PLPoint", "X:=", "-27.4547mm", "Y:=", "-175.2716mm", "Z:=", "25.5838mm"), _
			Array("NAME:PLPoint", "X:=", "-36.5453mm", "Y:=", "-175.2716mm", "Z:=", "25.5838mm"), _
			Array("NAME:PLPoint", "X:=", "-36.5453mm",   "Y:=", "-166.9038mm",   "Z:=", "22.0318mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.6035mm", "Y:=", "-166.8501mm", "Z:=", "22.0091mm"), _
			Array("NAME:PLPoint", "X:=", "-11.3965mm", "Y:=", "-166.8501mm", "Z:=", "22.0091mm"), _
			Array("NAME:PLPoint", "X:=", "-11.3965mm", "Y:=", "-175.3253mm", "Z:=", "25.6066mm"), _
			Array("NAME:PLPoint", "X:=", "-20.6035mm", "Y:=", "-175.3253mm", "Z:=", "25.6066mm"), _
			Array("NAME:PLPoint", "X:=", "-20.6035mm",   "Y:=", "-166.8501mm",   "Z:=", "22.0091mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.6167mm", "Y:=", "-166.8380mm", "Z:=", "22.0039mm"), _
			Array("NAME:PLPoint", "X:=", "4.6167mm", "Y:=", "-166.8380mm", "Z:=", "22.0039mm"), _
			Array("NAME:PLPoint", "X:=", "4.6167mm", "Y:=", "-175.3374mm", "Z:=", "25.6117mm"), _
			Array("NAME:PLPoint", "X:=", "-4.6167mm", "Y:=", "-175.3374mm", "Z:=", "25.6117mm"), _
			Array("NAME:PLPoint", "X:=", "-4.6167mm",   "Y:=", "-166.8380mm",   "Z:=", "22.0039mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.3965mm", "Y:=", "-166.8501mm", "Z:=", "22.0091mm"), _
			Array("NAME:PLPoint", "X:=", "20.6035mm", "Y:=", "-166.8501mm", "Z:=", "22.0091mm"), _
			Array("NAME:PLPoint", "X:=", "20.6035mm", "Y:=", "-175.3253mm", "Z:=", "25.6066mm"), _
			Array("NAME:PLPoint", "X:=", "11.3965mm", "Y:=", "-175.3253mm", "Z:=", "25.6066mm"), _
			Array("NAME:PLPoint", "X:=", "11.3965mm",   "Y:=", "-166.8501mm",   "Z:=", "22.0091mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.4547mm", "Y:=", "-166.9038mm", "Z:=", "22.0318mm"), _
			Array("NAME:PLPoint", "X:=", "36.5453mm", "Y:=", "-166.9038mm", "Z:=", "22.0318mm"), _
			Array("NAME:PLPoint", "X:=", "36.5453mm", "Y:=", "-175.2716mm", "Z:=", "25.5838mm"), _
			Array("NAME:PLPoint", "X:=", "27.4547mm", "Y:=", "-175.2716mm", "Z:=", "25.5838mm"), _
			Array("NAME:PLPoint", "X:=", "27.4547mm",   "Y:=", "-166.9038mm",   "Z:=", "22.0318mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.6296mm", "Y:=", "-167.0647mm", "Z:=", "22.1002mm"), _
			Array("NAME:PLPoint", "X:=", "52.3704mm", "Y:=", "-167.0647mm", "Z:=", "22.1002mm"), _
			Array("NAME:PLPoint", "X:=", "52.3704mm", "Y:=", "-175.1106mm", "Z:=", "25.5155mm"), _
			Array("NAME:PLPoint", "X:=", "43.6296mm", "Y:=", "-175.1106mm", "Z:=", "25.5155mm"), _
			Array("NAME:PLPoint", "X:=", "43.6296mm",   "Y:=", "-167.0647mm",   "Z:=", "22.1002mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "61.3548mm", "Y:=", "-168.6527mm", "Z:=", "22.7742mm"), _
			Array("NAME:PLPoint", "X:=", "66.6452mm", "Y:=", "-168.6527mm", "Z:=", "22.7742mm"), _
			Array("NAME:PLPoint", "X:=", "66.6452mm", "Y:=", "-173.5226mm", "Z:=", "24.8414mm"), _
			Array("NAME:PLPoint", "X:=", "61.3548mm", "Y:=", "-173.5226mm", "Z:=", "24.8414mm"), _
			Array("NAME:PLPoint", "X:=", "61.3548mm",   "Y:=", "-168.6527mm",   "Z:=", "22.7742mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "74.8103mm", "Y:=", "-166.3105mm", "Z:=", "21.7800mm"), _
			Array("NAME:PLPoint", "X:=", "85.1897mm", "Y:=", "-166.3105mm", "Z:=", "21.7800mm"), _
			Array("NAME:PLPoint", "X:=", "85.1897mm", "Y:=", "-175.8648mm", "Z:=", "25.8356mm"), _
			Array("NAME:PLPoint", "X:=", "74.8103mm", "Y:=", "-175.8648mm", "Z:=", "25.8356mm"), _
			Array("NAME:PLPoint", "X:=", "74.8103mm",   "Y:=", "-166.3105mm",   "Z:=", "21.7800mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "91.0758mm", "Y:=", "-166.5549mm", "Z:=", "21.8838mm"), _
			Array("NAME:PLPoint", "X:=", "100.9242mm", "Y:=", "-166.5549mm", "Z:=", "21.8838mm"), _
			Array("NAME:PLPoint", "X:=", "100.9242mm", "Y:=", "-175.6204mm", "Z:=", "25.7318mm"), _
			Array("NAME:PLPoint", "X:=", "91.0758mm", "Y:=", "-175.6204mm", "Z:=", "25.7318mm"), _
			Array("NAME:PLPoint", "X:=", "91.0758mm",   "Y:=", "-166.5549mm",   "Z:=", "21.8838mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_4_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-101.0191mm", "Y:=", "-181.1956mm", "Z:=", "28.0984mm"), _
			Array("NAME:PLPoint", "X:=", "-90.9809mm", "Y:=", "-181.1956mm", "Z:=", "28.0984mm"), _
			Array("NAME:PLPoint", "X:=", "-90.9809mm", "Y:=", "-190.4359mm", "Z:=", "32.0206mm"), _
			Array("NAME:PLPoint", "X:=", "-101.0191mm", "Y:=", "-190.4359mm", "Z:=", "32.0206mm"), _
			Array("NAME:PLPoint", "X:=", "-101.0191mm",   "Y:=", "-181.1956mm",   "Z:=", "28.0984mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-86.8509mm", "Y:=", "-179.5094mm", "Z:=", "27.3826mm"), _
			Array("NAME:PLPoint", "X:=", "-73.1491mm", "Y:=", "-179.5094mm", "Z:=", "27.3826mm"), _
			Array("NAME:PLPoint", "X:=", "-73.1491mm", "Y:=", "-192.1221mm", "Z:=", "32.7364mm"), _
			Array("NAME:PLPoint", "X:=", "-86.8509mm", "Y:=", "-192.1221mm", "Z:=", "32.7364mm"), _
			Array("NAME:PLPoint", "X:=", "-86.8509mm",   "Y:=", "-179.5094mm",   "Z:=", "27.3826mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.3027mm", "Y:=", "-181.8551mm", "Z:=", "28.3783mm"), _
			Array("NAME:PLPoint", "X:=", "-59.6973mm", "Y:=", "-181.8551mm", "Z:=", "28.3783mm"), _
			Array("NAME:PLPoint", "X:=", "-59.6973mm", "Y:=", "-189.7765mm", "Z:=", "31.7407mm"), _
			Array("NAME:PLPoint", "X:=", "-68.3027mm", "Y:=", "-189.7765mm", "Z:=", "31.7407mm"), _
			Array("NAME:PLPoint", "X:=", "-68.3027mm",   "Y:=", "-181.8551mm",   "Z:=", "28.3783mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.5645mm", "Y:=", "-181.6141mm", "Z:=", "28.2760mm"), _
			Array("NAME:PLPoint", "X:=", "-43.4355mm", "Y:=", "-181.6141mm", "Z:=", "28.2760mm"), _
			Array("NAME:PLPoint", "X:=", "-43.4355mm", "Y:=", "-190.0174mm", "Z:=", "31.8430mm"), _
			Array("NAME:PLPoint", "X:=", "-52.5645mm", "Y:=", "-190.0174mm", "Z:=", "31.8430mm"), _
			Array("NAME:PLPoint", "X:=", "-52.5645mm",   "Y:=", "-181.6141mm",   "Z:=", "28.2760mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.6421mm", "Y:=", "-181.5427mm", "Z:=", "28.2457mm"), _
			Array("NAME:PLPoint", "X:=", "-27.3579mm", "Y:=", "-181.5427mm", "Z:=", "28.2457mm"), _
			Array("NAME:PLPoint", "X:=", "-27.3579mm", "Y:=", "-190.0889mm", "Z:=", "31.8733mm"), _
			Array("NAME:PLPoint", "X:=", "-36.6421mm", "Y:=", "-190.0889mm", "Z:=", "31.8733mm"), _
			Array("NAME:PLPoint", "X:=", "-36.6421mm",   "Y:=", "-181.5427mm",   "Z:=", "28.2457mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.6737mm", "Y:=", "-181.5136mm", "Z:=", "28.2333mm"), _
			Array("NAME:PLPoint", "X:=", "-11.3263mm", "Y:=", "-181.5136mm", "Z:=", "28.2333mm"), _
			Array("NAME:PLPoint", "X:=", "-11.3263mm", "Y:=", "-190.1180mm", "Z:=", "31.8857mm"), _
			Array("NAME:PLPoint", "X:=", "-20.6737mm", "Y:=", "-190.1180mm", "Z:=", "31.8857mm"), _
			Array("NAME:PLPoint", "X:=", "-20.6737mm",   "Y:=", "-181.5136mm",   "Z:=", "28.2333mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.6836mm", "Y:=", "-181.5045mm", "Z:=", "28.2295mm"), _
			Array("NAME:PLPoint", "X:=", "4.6836mm", "Y:=", "-181.5045mm", "Z:=", "28.2295mm"), _
			Array("NAME:PLPoint", "X:=", "4.6836mm", "Y:=", "-190.1271mm", "Z:=", "31.8896mm"), _
			Array("NAME:PLPoint", "X:=", "-4.6836mm", "Y:=", "-190.1271mm", "Z:=", "31.8896mm"), _
			Array("NAME:PLPoint", "X:=", "-4.6836mm",   "Y:=", "-181.5045mm",   "Z:=", "28.2295mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.3263mm", "Y:=", "-181.5136mm", "Z:=", "28.2333mm"), _
			Array("NAME:PLPoint", "X:=", "20.6737mm", "Y:=", "-181.5136mm", "Z:=", "28.2333mm"), _
			Array("NAME:PLPoint", "X:=", "20.6737mm", "Y:=", "-190.1180mm", "Z:=", "31.8857mm"), _
			Array("NAME:PLPoint", "X:=", "11.3263mm", "Y:=", "-190.1180mm", "Z:=", "31.8857mm"), _
			Array("NAME:PLPoint", "X:=", "11.3263mm",   "Y:=", "-181.5136mm",   "Z:=", "28.2333mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.3579mm", "Y:=", "-181.5427mm", "Z:=", "28.2457mm"), _
			Array("NAME:PLPoint", "X:=", "36.6421mm", "Y:=", "-181.5427mm", "Z:=", "28.2457mm"), _
			Array("NAME:PLPoint", "X:=", "36.6421mm", "Y:=", "-190.0889mm", "Z:=", "31.8733mm"), _
			Array("NAME:PLPoint", "X:=", "27.3579mm", "Y:=", "-190.0889mm", "Z:=", "31.8733mm"), _
			Array("NAME:PLPoint", "X:=", "27.3579mm",   "Y:=", "-181.5427mm",   "Z:=", "28.2457mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.4355mm", "Y:=", "-181.6141mm", "Z:=", "28.2760mm"), _
			Array("NAME:PLPoint", "X:=", "52.5645mm", "Y:=", "-181.6141mm", "Z:=", "28.2760mm"), _
			Array("NAME:PLPoint", "X:=", "52.5645mm", "Y:=", "-190.0174mm", "Z:=", "31.8430mm"), _
			Array("NAME:PLPoint", "X:=", "43.4355mm", "Y:=", "-190.0174mm", "Z:=", "31.8430mm"), _
			Array("NAME:PLPoint", "X:=", "43.4355mm",   "Y:=", "-181.6141mm",   "Z:=", "28.2760mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.6973mm", "Y:=", "-181.8551mm", "Z:=", "28.3783mm"), _
			Array("NAME:PLPoint", "X:=", "68.3027mm", "Y:=", "-181.8551mm", "Z:=", "28.3783mm"), _
			Array("NAME:PLPoint", "X:=", "68.3027mm", "Y:=", "-189.7765mm", "Z:=", "31.7407mm"), _
			Array("NAME:PLPoint", "X:=", "59.6973mm", "Y:=", "-189.7765mm", "Z:=", "31.7407mm"), _
			Array("NAME:PLPoint", "X:=", "59.6973mm",   "Y:=", "-181.8551mm",   "Z:=", "28.3783mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "73.1491mm", "Y:=", "-179.5094mm", "Z:=", "27.3826mm"), _
			Array("NAME:PLPoint", "X:=", "86.8509mm", "Y:=", "-179.5094mm", "Z:=", "27.3826mm"), _
			Array("NAME:PLPoint", "X:=", "86.8509mm", "Y:=", "-192.1221mm", "Z:=", "32.7364mm"), _
			Array("NAME:PLPoint", "X:=", "73.1491mm", "Y:=", "-192.1221mm", "Z:=", "32.7364mm"), _
			Array("NAME:PLPoint", "X:=", "73.1491mm",   "Y:=", "-179.5094mm",   "Z:=", "27.3826mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "90.9809mm", "Y:=", "-181.1956mm", "Z:=", "28.0984mm"), _
			Array("NAME:PLPoint", "X:=", "101.0191mm", "Y:=", "-181.1956mm", "Z:=", "28.0984mm"), _
			Array("NAME:PLPoint", "X:=", "101.0191mm", "Y:=", "-190.4359mm", "Z:=", "32.0206mm"), _
			Array("NAME:PLPoint", "X:=", "90.9809mm", "Y:=", "-190.4359mm", "Z:=", "32.0206mm"), _
			Array("NAME:PLPoint", "X:=", "90.9809mm",   "Y:=", "-181.1956mm",   "Z:=", "28.0984mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_5_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-101.1503mm", "Y:=", "-195.8030mm", "Z:=", "34.2988mm"), _
			Array("NAME:PLPoint", "X:=", "-90.8497mm", "Y:=", "-195.8030mm", "Z:=", "34.2988mm"), _
			Array("NAME:PLPoint", "X:=", "-90.8497mm", "Y:=", "-205.2847mm", "Z:=", "38.3236mm"), _
			Array("NAME:PLPoint", "X:=", "-101.1503mm", "Y:=", "-205.2847mm", "Z:=", "38.3236mm"), _
			Array("NAME:PLPoint", "X:=", "-101.1503mm",   "Y:=", "-195.8030mm",   "Z:=", "34.2988mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-83.1547mm", "Y:=", "-197.6399mm", "Z:=", "35.0786mm"), _
			Array("NAME:PLPoint", "X:=", "-76.8453mm", "Y:=", "-197.6399mm", "Z:=", "35.0786mm"), _
			Array("NAME:PLPoint", "X:=", "-76.8453mm", "Y:=", "-203.4478mm", "Z:=", "37.5438mm"), _
			Array("NAME:PLPoint", "X:=", "-83.1547mm", "Y:=", "-203.4478mm", "Z:=", "37.5438mm"), _
			Array("NAME:PLPoint", "X:=", "-83.1547mm",   "Y:=", "-197.6399mm",   "Z:=", "35.0786mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.5012mm", "Y:=", "-196.4005mm", "Z:=", "34.5524mm"), _
			Array("NAME:PLPoint", "X:=", "-59.4988mm", "Y:=", "-196.4005mm", "Z:=", "34.5524mm"), _
			Array("NAME:PLPoint", "X:=", "-59.4988mm", "Y:=", "-204.6872mm", "Z:=", "38.0700mm"), _
			Array("NAME:PLPoint", "X:=", "-68.5012mm", "Y:=", "-204.6872mm", "Z:=", "38.0700mm"), _
			Array("NAME:PLPoint", "X:=", "-68.5012mm",   "Y:=", "-196.4005mm",   "Z:=", "34.5524mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.6321mm", "Y:=", "-196.2800mm", "Z:=", "34.5013mm"), _
			Array("NAME:PLPoint", "X:=", "-43.3679mm", "Y:=", "-196.2800mm", "Z:=", "34.5013mm"), _
			Array("NAME:PLPoint", "X:=", "-43.3679mm", "Y:=", "-204.8077mm", "Z:=", "38.1211mm"), _
			Array("NAME:PLPoint", "X:=", "-52.6321mm", "Y:=", "-204.8077mm", "Z:=", "38.1211mm"), _
			Array("NAME:PLPoint", "X:=", "-52.6321mm",   "Y:=", "-196.2800mm",   "Z:=", "34.5013mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.6860mm", "Y:=", "-196.2304mm", "Z:=", "34.4802mm"), _
			Array("NAME:PLPoint", "X:=", "-27.3140mm", "Y:=", "-196.2304mm", "Z:=", "34.4802mm"), _
			Array("NAME:PLPoint", "X:=", "-27.3140mm", "Y:=", "-204.8573mm", "Z:=", "38.1422mm"), _
			Array("NAME:PLPoint", "X:=", "-36.6860mm", "Y:=", "-204.8573mm", "Z:=", "38.1422mm"), _
			Array("NAME:PLPoint", "X:=", "-36.6860mm",   "Y:=", "-196.2304mm",   "Z:=", "34.4802mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.7103mm", "Y:=", "-196.2080mm", "Z:=", "34.4707mm"), _
			Array("NAME:PLPoint", "X:=", "-11.2897mm", "Y:=", "-196.2080mm", "Z:=", "34.4707mm"), _
			Array("NAME:PLPoint", "X:=", "-11.2897mm", "Y:=", "-204.8797mm", "Z:=", "38.1517mm"), _
			Array("NAME:PLPoint", "X:=", "-20.7103mm", "Y:=", "-204.8797mm", "Z:=", "38.1517mm"), _
			Array("NAME:PLPoint", "X:=", "-20.7103mm",   "Y:=", "-196.2080mm",   "Z:=", "34.4707mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.7169mm", "Y:=", "-196.2019mm", "Z:=", "34.4682mm"), _
			Array("NAME:PLPoint", "X:=", "4.7169mm", "Y:=", "-196.2019mm", "Z:=", "34.4682mm"), _
			Array("NAME:PLPoint", "X:=", "4.7169mm", "Y:=", "-204.8858mm", "Z:=", "38.1542mm"), _
			Array("NAME:PLPoint", "X:=", "-4.7169mm", "Y:=", "-204.8858mm", "Z:=", "38.1542mm"), _
			Array("NAME:PLPoint", "X:=", "-4.7169mm",   "Y:=", "-196.2019mm",   "Z:=", "34.4682mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.2897mm", "Y:=", "-196.2080mm", "Z:=", "34.4707mm"), _
			Array("NAME:PLPoint", "X:=", "20.7103mm", "Y:=", "-196.2080mm", "Z:=", "34.4707mm"), _
			Array("NAME:PLPoint", "X:=", "20.7103mm", "Y:=", "-204.8797mm", "Z:=", "38.1517mm"), _
			Array("NAME:PLPoint", "X:=", "11.2897mm", "Y:=", "-204.8797mm", "Z:=", "38.1517mm"), _
			Array("NAME:PLPoint", "X:=", "11.2897mm",   "Y:=", "-196.2080mm",   "Z:=", "34.4707mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.3140mm", "Y:=", "-196.2304mm", "Z:=", "34.4802mm"), _
			Array("NAME:PLPoint", "X:=", "36.6860mm", "Y:=", "-196.2304mm", "Z:=", "34.4802mm"), _
			Array("NAME:PLPoint", "X:=", "36.6860mm", "Y:=", "-204.8573mm", "Z:=", "38.1422mm"), _
			Array("NAME:PLPoint", "X:=", "27.3140mm", "Y:=", "-204.8573mm", "Z:=", "38.1422mm"), _
			Array("NAME:PLPoint", "X:=", "27.3140mm",   "Y:=", "-196.2304mm",   "Z:=", "34.4802mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.3679mm", "Y:=", "-196.2800mm", "Z:=", "34.5013mm"), _
			Array("NAME:PLPoint", "X:=", "52.6321mm", "Y:=", "-196.2800mm", "Z:=", "34.5013mm"), _
			Array("NAME:PLPoint", "X:=", "52.6321mm", "Y:=", "-204.8077mm", "Z:=", "38.1211mm"), _
			Array("NAME:PLPoint", "X:=", "43.3679mm", "Y:=", "-204.8077mm", "Z:=", "38.1211mm"), _
			Array("NAME:PLPoint", "X:=", "43.3679mm",   "Y:=", "-196.2800mm",   "Z:=", "34.5013mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.4988mm", "Y:=", "-196.4005mm", "Z:=", "34.5524mm"), _
			Array("NAME:PLPoint", "X:=", "68.5012mm", "Y:=", "-196.4005mm", "Z:=", "34.5524mm"), _
			Array("NAME:PLPoint", "X:=", "68.5012mm", "Y:=", "-204.6872mm", "Z:=", "38.0700mm"), _
			Array("NAME:PLPoint", "X:=", "59.4988mm", "Y:=", "-204.6872mm", "Z:=", "38.0700mm"), _
			Array("NAME:PLPoint", "X:=", "59.4988mm",   "Y:=", "-196.4005mm",   "Z:=", "34.5524mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "76.8453mm", "Y:=", "-197.6399mm", "Z:=", "35.0786mm"), _
			Array("NAME:PLPoint", "X:=", "83.1547mm", "Y:=", "-197.6399mm", "Z:=", "35.0786mm"), _
			Array("NAME:PLPoint", "X:=", "83.1547mm", "Y:=", "-203.4478mm", "Z:=", "37.5438mm"), _
			Array("NAME:PLPoint", "X:=", "76.8453mm", "Y:=", "-203.4478mm", "Z:=", "37.5438mm"), _
			Array("NAME:PLPoint", "X:=", "76.8453mm",   "Y:=", "-197.6399mm",   "Z:=", "35.0786mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "90.8497mm", "Y:=", "-195.8030mm", "Z:=", "34.2988mm"), _
			Array("NAME:PLPoint", "X:=", "101.1503mm", "Y:=", "-195.8030mm", "Z:=", "34.2988mm"), _
			Array("NAME:PLPoint", "X:=", "101.1503mm", "Y:=", "-205.2847mm", "Z:=", "38.3236mm"), _
			Array("NAME:PLPoint", "X:=", "90.8497mm", "Y:=", "-205.2847mm", "Z:=", "38.3236mm"), _
			Array("NAME:PLPoint", "X:=", "90.8497mm",   "Y:=", "-195.8030mm",   "Z:=", "34.2988mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_6_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-101.3082mm", "Y:=", "-210.3857mm", "Z:=", "40.4888mm"), _
			Array("NAME:PLPoint", "X:=", "-90.6918mm", "Y:=", "-210.3857mm", "Z:=", "40.4888mm"), _
			Array("NAME:PLPoint", "X:=", "-90.6918mm", "Y:=", "-220.1581mm", "Z:=", "44.6370mm"), _
			Array("NAME:PLPoint", "X:=", "-101.3082mm", "Y:=", "-220.1581mm", "Z:=", "44.6370mm"), _
			Array("NAME:PLPoint", "X:=", "-101.3082mm",   "Y:=", "-210.3857mm",   "Z:=", "40.4888mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-84.0459mm", "Y:=", "-211.5477mm", "Z:=", "40.9820mm"), _
			Array("NAME:PLPoint", "X:=", "-75.9541mm", "Y:=", "-211.5477mm", "Z:=", "40.9820mm"), _
			Array("NAME:PLPoint", "X:=", "-75.9541mm", "Y:=", "-218.9962mm", "Z:=", "44.1438mm"), _
			Array("NAME:PLPoint", "X:=", "-84.0459mm", "Y:=", "-218.9962mm", "Z:=", "44.1438mm"), _
			Array("NAME:PLPoint", "X:=", "-84.0459mm",   "Y:=", "-211.5477mm",   "Z:=", "40.9820mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.5602mm", "Y:=", "-211.0742mm", "Z:=", "40.7811mm"), _
			Array("NAME:PLPoint", "X:=", "-59.4398mm", "Y:=", "-211.0742mm", "Z:=", "40.7811mm"), _
			Array("NAME:PLPoint", "X:=", "-59.4398mm", "Y:=", "-219.4696mm", "Z:=", "44.3447mm"), _
			Array("NAME:PLPoint", "X:=", "-68.5602mm", "Y:=", "-219.4696mm", "Z:=", "44.3447mm"), _
			Array("NAME:PLPoint", "X:=", "-68.5602mm",   "Y:=", "-211.0742mm",   "Z:=", "40.7811mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.6617mm", "Y:=", "-210.9808mm", "Z:=", "40.7414mm"), _
			Array("NAME:PLPoint", "X:=", "-43.3383mm", "Y:=", "-210.9808mm", "Z:=", "40.7414mm"), _
			Array("NAME:PLPoint", "X:=", "-43.3383mm", "Y:=", "-219.5630mm", "Z:=", "44.3844mm"), _
			Array("NAME:PLPoint", "X:=", "-52.6617mm", "Y:=", "-219.5630mm", "Z:=", "44.3844mm"), _
			Array("NAME:PLPoint", "X:=", "-52.6617mm",   "Y:=", "-210.9808mm",   "Z:=", "40.7414mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.7073mm", "Y:=", "-210.9388mm", "Z:=", "40.7236mm"), _
			Array("NAME:PLPoint", "X:=", "-27.2927mm", "Y:=", "-210.9388mm", "Z:=", "40.7236mm"), _
			Array("NAME:PLPoint", "X:=", "-27.2927mm", "Y:=", "-219.6051mm", "Z:=", "44.4022mm"), _
			Array("NAME:PLPoint", "X:=", "-36.7073mm", "Y:=", "-219.6051mm", "Z:=", "44.4022mm"), _
			Array("NAME:PLPoint", "X:=", "-36.7073mm",   "Y:=", "-210.9388mm",   "Z:=", "40.7236mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.7270mm", "Y:=", "-210.9207mm", "Z:=", "40.7159mm"), _
			Array("NAME:PLPoint", "X:=", "-11.2730mm", "Y:=", "-210.9207mm", "Z:=", "40.7159mm"), _
			Array("NAME:PLPoint", "X:=", "-11.2730mm", "Y:=", "-219.6231mm", "Z:=", "44.4099mm"), _
			Array("NAME:PLPoint", "X:=", "-20.7270mm", "Y:=", "-219.6231mm", "Z:=", "44.4099mm"), _
			Array("NAME:PLPoint", "X:=", "-20.7270mm",   "Y:=", "-210.9207mm",   "Z:=", "40.7159mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.7335mm", "Y:=", "-210.9147mm", "Z:=", "40.7134mm"), _
			Array("NAME:PLPoint", "X:=", "4.7335mm", "Y:=", "-210.9147mm", "Z:=", "40.7134mm"), _
			Array("NAME:PLPoint", "X:=", "4.7335mm", "Y:=", "-219.6291mm", "Z:=", "44.4124mm"), _
			Array("NAME:PLPoint", "X:=", "-4.7335mm", "Y:=", "-219.6291mm", "Z:=", "44.4124mm"), _
			Array("NAME:PLPoint", "X:=", "-4.7335mm",   "Y:=", "-210.9147mm",   "Z:=", "40.7134mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.2730mm", "Y:=", "-210.9207mm", "Z:=", "40.7159mm"), _
			Array("NAME:PLPoint", "X:=", "20.7270mm", "Y:=", "-210.9207mm", "Z:=", "40.7159mm"), _
			Array("NAME:PLPoint", "X:=", "20.7270mm", "Y:=", "-219.6231mm", "Z:=", "44.4099mm"), _
			Array("NAME:PLPoint", "X:=", "11.2730mm", "Y:=", "-219.6231mm", "Z:=", "44.4099mm"), _
			Array("NAME:PLPoint", "X:=", "11.2730mm",   "Y:=", "-210.9207mm",   "Z:=", "40.7159mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.2927mm", "Y:=", "-210.9388mm", "Z:=", "40.7236mm"), _
			Array("NAME:PLPoint", "X:=", "36.7073mm", "Y:=", "-210.9388mm", "Z:=", "40.7236mm"), _
			Array("NAME:PLPoint", "X:=", "36.7073mm", "Y:=", "-219.6051mm", "Z:=", "44.4022mm"), _
			Array("NAME:PLPoint", "X:=", "27.2927mm", "Y:=", "-219.6051mm", "Z:=", "44.4022mm"), _
			Array("NAME:PLPoint", "X:=", "27.2927mm",   "Y:=", "-210.9388mm",   "Z:=", "40.7236mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.3383mm", "Y:=", "-210.9808mm", "Z:=", "40.7414mm"), _
			Array("NAME:PLPoint", "X:=", "52.6617mm", "Y:=", "-210.9808mm", "Z:=", "40.7414mm"), _
			Array("NAME:PLPoint", "X:=", "52.6617mm", "Y:=", "-219.5630mm", "Z:=", "44.3844mm"), _
			Array("NAME:PLPoint", "X:=", "43.3383mm", "Y:=", "-219.5630mm", "Z:=", "44.3844mm"), _
			Array("NAME:PLPoint", "X:=", "43.3383mm",   "Y:=", "-210.9808mm",   "Z:=", "40.7414mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.4398mm", "Y:=", "-211.0742mm", "Z:=", "40.7811mm"), _
			Array("NAME:PLPoint", "X:=", "68.5602mm", "Y:=", "-211.0742mm", "Z:=", "40.7811mm"), _
			Array("NAME:PLPoint", "X:=", "68.5602mm", "Y:=", "-219.4696mm", "Z:=", "44.3447mm"), _
			Array("NAME:PLPoint", "X:=", "59.4398mm", "Y:=", "-219.4696mm", "Z:=", "44.3447mm"), _
			Array("NAME:PLPoint", "X:=", "59.4398mm",   "Y:=", "-211.0742mm",   "Z:=", "40.7811mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "75.9541mm", "Y:=", "-211.5477mm", "Z:=", "40.9820mm"), _
			Array("NAME:PLPoint", "X:=", "84.0459mm", "Y:=", "-211.5477mm", "Z:=", "40.9820mm"), _
			Array("NAME:PLPoint", "X:=", "84.0459mm", "Y:=", "-218.9962mm", "Z:=", "44.1438mm"), _
			Array("NAME:PLPoint", "X:=", "75.9541mm", "Y:=", "-218.9962mm", "Z:=", "44.1438mm"), _
			Array("NAME:PLPoint", "X:=", "75.9541mm",   "Y:=", "-211.5477mm",   "Z:=", "40.9820mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "90.6918mm", "Y:=", "-210.3857mm", "Z:=", "40.4888mm"), _
			Array("NAME:PLPoint", "X:=", "101.3082mm", "Y:=", "-210.3857mm", "Z:=", "40.4888mm"), _
			Array("NAME:PLPoint", "X:=", "101.3082mm", "Y:=", "-220.1581mm", "Z:=", "44.6370mm"), _
			Array("NAME:PLPoint", "X:=", "90.6918mm", "Y:=", "-220.1581mm", "Z:=", "44.6370mm"), _
			Array("NAME:PLPoint", "X:=", "90.6918mm",   "Y:=", "-210.3857mm",   "Z:=", "40.4888mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_7_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-101.3948mm", "Y:=", "-225.0341mm", "Z:=", "46.7067mm"), _
			Array("NAME:PLPoint", "X:=", "-90.6052mm", "Y:=", "-225.0341mm", "Z:=", "46.7067mm"), _
			Array("NAME:PLPoint", "X:=", "-90.6052mm", "Y:=", "-234.9659mm", "Z:=", "50.9225mm"), _
			Array("NAME:PLPoint", "X:=", "-101.3948mm", "Y:=", "-234.9659mm", "Z:=", "50.9225mm"), _
			Array("NAME:PLPoint", "X:=", "-101.3948mm",   "Y:=", "-225.0341mm",   "Z:=", "46.7067mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-84.1655mm", "Y:=", "-226.1657mm", "Z:=", "47.1870mm"), _
			Array("NAME:PLPoint", "X:=", "-75.8345mm", "Y:=", "-226.1657mm", "Z:=", "47.1870mm"), _
			Array("NAME:PLPoint", "X:=", "-75.8345mm", "Y:=", "-233.8343mm", "Z:=", "50.4422mm"), _
			Array("NAME:PLPoint", "X:=", "-84.1655mm", "Y:=", "-233.8343mm", "Z:=", "50.4422mm"), _
			Array("NAME:PLPoint", "X:=", "-84.1655mm",   "Y:=", "-226.1657mm",   "Z:=", "47.1870mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.5769mm", "Y:=", "-225.7869mm", "Z:=", "47.0263mm"), _
			Array("NAME:PLPoint", "X:=", "-59.4231mm", "Y:=", "-225.7869mm", "Z:=", "47.0263mm"), _
			Array("NAME:PLPoint", "X:=", "-59.4231mm", "Y:=", "-234.2131mm", "Z:=", "50.6030mm"), _
			Array("NAME:PLPoint", "X:=", "-68.5769mm", "Y:=", "-234.2131mm", "Z:=", "50.6030mm"), _
			Array("NAME:PLPoint", "X:=", "-68.5769mm",   "Y:=", "-225.7869mm",   "Z:=", "47.0263mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.6701mm", "Y:=", "-225.7012mm", "Z:=", "46.9899mm"), _
			Array("NAME:PLPoint", "X:=", "-43.3299mm", "Y:=", "-225.7012mm", "Z:=", "46.9899mm"), _
			Array("NAME:PLPoint", "X:=", "-43.3299mm", "Y:=", "-234.2988mm", "Z:=", "50.6393mm"), _
			Array("NAME:PLPoint", "X:=", "-52.6701mm", "Y:=", "-234.2988mm", "Z:=", "50.6393mm"), _
			Array("NAME:PLPoint", "X:=", "-52.6701mm",   "Y:=", "-225.7012mm",   "Z:=", "46.9899mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.7129mm", "Y:=", "-225.6618mm", "Z:=", "46.9731mm"), _
			Array("NAME:PLPoint", "X:=", "-27.2871mm", "Y:=", "-225.6618mm", "Z:=", "46.9731mm"), _
			Array("NAME:PLPoint", "X:=", "-27.2871mm", "Y:=", "-234.3382mm", "Z:=", "50.6561mm"), _
			Array("NAME:PLPoint", "X:=", "-36.7129mm", "Y:=", "-234.3382mm", "Z:=", "50.6561mm"), _
			Array("NAME:PLPoint", "X:=", "-36.7129mm",   "Y:=", "-225.6618mm",   "Z:=", "46.9731mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.7325mm", "Y:=", "-225.6437mm", "Z:=", "46.9655mm"), _
			Array("NAME:PLPoint", "X:=", "-11.2675mm", "Y:=", "-225.6437mm", "Z:=", "46.9655mm"), _
			Array("NAME:PLPoint", "X:=", "-11.2675mm", "Y:=", "-234.3563mm", "Z:=", "50.6637mm"), _
			Array("NAME:PLPoint", "X:=", "-20.7325mm", "Y:=", "-234.3563mm", "Z:=", "50.6637mm"), _
			Array("NAME:PLPoint", "X:=", "-20.7325mm",   "Y:=", "-225.6437mm",   "Z:=", "46.9655mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.7390mm", "Y:=", "-225.6377mm", "Z:=", "46.9629mm"), _
			Array("NAME:PLPoint", "X:=", "4.7390mm", "Y:=", "-225.6377mm", "Z:=", "46.9629mm"), _
			Array("NAME:PLPoint", "X:=", "4.7390mm", "Y:=", "-234.3623mm", "Z:=", "50.6663mm"), _
			Array("NAME:PLPoint", "X:=", "-4.7390mm", "Y:=", "-234.3623mm", "Z:=", "50.6663mm"), _
			Array("NAME:PLPoint", "X:=", "-4.7390mm",   "Y:=", "-225.6377mm",   "Z:=", "46.9629mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.2675mm", "Y:=", "-225.6437mm", "Z:=", "46.9655mm"), _
			Array("NAME:PLPoint", "X:=", "20.7325mm", "Y:=", "-225.6437mm", "Z:=", "46.9655mm"), _
			Array("NAME:PLPoint", "X:=", "20.7325mm", "Y:=", "-234.3563mm", "Z:=", "50.6637mm"), _
			Array("NAME:PLPoint", "X:=", "11.2675mm", "Y:=", "-234.3563mm", "Z:=", "50.6637mm"), _
			Array("NAME:PLPoint", "X:=", "11.2675mm",   "Y:=", "-225.6437mm",   "Z:=", "46.9655mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.2871mm", "Y:=", "-225.6618mm", "Z:=", "46.9731mm"), _
			Array("NAME:PLPoint", "X:=", "36.7129mm", "Y:=", "-225.6618mm", "Z:=", "46.9731mm"), _
			Array("NAME:PLPoint", "X:=", "36.7129mm", "Y:=", "-234.3382mm", "Z:=", "50.6561mm"), _
			Array("NAME:PLPoint", "X:=", "27.2871mm", "Y:=", "-234.3382mm", "Z:=", "50.6561mm"), _
			Array("NAME:PLPoint", "X:=", "27.2871mm",   "Y:=", "-225.6618mm",   "Z:=", "46.9731mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.3299mm", "Y:=", "-225.7012mm", "Z:=", "46.9899mm"), _
			Array("NAME:PLPoint", "X:=", "52.6701mm", "Y:=", "-225.7012mm", "Z:=", "46.9899mm"), _
			Array("NAME:PLPoint", "X:=", "52.6701mm", "Y:=", "-234.2988mm", "Z:=", "50.6393mm"), _
			Array("NAME:PLPoint", "X:=", "43.3299mm", "Y:=", "-234.2988mm", "Z:=", "50.6393mm"), _
			Array("NAME:PLPoint", "X:=", "43.3299mm",   "Y:=", "-225.7012mm",   "Z:=", "46.9899mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.4231mm", "Y:=", "-225.7869mm", "Z:=", "47.0263mm"), _
			Array("NAME:PLPoint", "X:=", "68.5769mm", "Y:=", "-225.7869mm", "Z:=", "47.0263mm"), _
			Array("NAME:PLPoint", "X:=", "68.5769mm", "Y:=", "-234.2131mm", "Z:=", "50.6030mm"), _
			Array("NAME:PLPoint", "X:=", "59.4231mm", "Y:=", "-234.2131mm", "Z:=", "50.6030mm"), _
			Array("NAME:PLPoint", "X:=", "59.4231mm",   "Y:=", "-225.7869mm",   "Z:=", "47.0263mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "75.8345mm", "Y:=", "-226.1657mm", "Z:=", "47.1870mm"), _
			Array("NAME:PLPoint", "X:=", "84.1655mm", "Y:=", "-226.1657mm", "Z:=", "47.1870mm"), _
			Array("NAME:PLPoint", "X:=", "84.1655mm", "Y:=", "-233.8343mm", "Z:=", "50.4422mm"), _
			Array("NAME:PLPoint", "X:=", "75.8345mm", "Y:=", "-233.8343mm", "Z:=", "50.4422mm"), _
			Array("NAME:PLPoint", "X:=", "75.8345mm",   "Y:=", "-226.1657mm",   "Z:=", "47.1870mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "90.6052mm", "Y:=", "-225.0341mm", "Z:=", "46.7067mm"), _
			Array("NAME:PLPoint", "X:=", "101.3948mm", "Y:=", "-225.0341mm", "Z:=", "46.7067mm"), _
			Array("NAME:PLPoint", "X:=", "101.3948mm", "Y:=", "-234.9659mm", "Z:=", "50.9225mm"), _
			Array("NAME:PLPoint", "X:=", "90.6052mm", "Y:=", "-234.9659mm", "Z:=", "50.9225mm"), _
			Array("NAME:PLPoint", "X:=", "90.6052mm",   "Y:=", "-225.0341mm",   "Z:=", "46.7067mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_8_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-101.3091mm", "Y:=", "-239.8410mm", "Z:=", "52.9919mm"), _
			Array("NAME:PLPoint", "X:=", "-90.6909mm", "Y:=", "-239.8410mm", "Z:=", "52.9919mm"), _
			Array("NAME:PLPoint", "X:=", "-90.6909mm", "Y:=", "-249.6152mm", "Z:=", "57.1408mm"), _
			Array("NAME:PLPoint", "X:=", "-101.3091mm", "Y:=", "-249.6152mm", "Z:=", "57.1408mm"), _
			Array("NAME:PLPoint", "X:=", "-101.3091mm",   "Y:=", "-239.8410mm",   "Z:=", "52.9919mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-84.0474mm", "Y:=", "-241.0024mm", "Z:=", "53.4849mm"), _
			Array("NAME:PLPoint", "X:=", "-75.9526mm", "Y:=", "-241.0024mm", "Z:=", "53.4849mm"), _
			Array("NAME:PLPoint", "X:=", "-75.9526mm", "Y:=", "-248.4537mm", "Z:=", "56.6478mm"), _
			Array("NAME:PLPoint", "X:=", "-84.0474mm", "Y:=", "-248.4537mm", "Z:=", "56.6478mm"), _
			Array("NAME:PLPoint", "X:=", "-84.0474mm",   "Y:=", "-241.0024mm",   "Z:=", "53.4849mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.5603mm", "Y:=", "-240.5303mm", "Z:=", "53.2845mm"), _
			Array("NAME:PLPoint", "X:=", "-59.4397mm", "Y:=", "-240.5303mm", "Z:=", "53.2845mm"), _
			Array("NAME:PLPoint", "X:=", "-59.4397mm", "Y:=", "-248.9258mm", "Z:=", "56.8481mm"), _
			Array("NAME:PLPoint", "X:=", "-68.5603mm", "Y:=", "-248.9258mm", "Z:=", "56.8481mm"), _
			Array("NAME:PLPoint", "X:=", "-68.5603mm",   "Y:=", "-240.5303mm",   "Z:=", "53.2845mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.6617mm", "Y:=", "-240.4370mm", "Z:=", "53.2448mm"), _
			Array("NAME:PLPoint", "X:=", "-43.3383mm", "Y:=", "-240.4370mm", "Z:=", "53.2448mm"), _
			Array("NAME:PLPoint", "X:=", "-43.3383mm", "Y:=", "-249.0192mm", "Z:=", "56.8878mm"), _
			Array("NAME:PLPoint", "X:=", "-52.6617mm", "Y:=", "-249.0192mm", "Z:=", "56.8878mm"), _
			Array("NAME:PLPoint", "X:=", "-52.6617mm",   "Y:=", "-240.4370mm",   "Z:=", "53.2448mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.7073mm", "Y:=", "-240.3949mm", "Z:=", "53.2270mm"), _
			Array("NAME:PLPoint", "X:=", "-27.2927mm", "Y:=", "-240.3949mm", "Z:=", "53.2270mm"), _
			Array("NAME:PLPoint", "X:=", "-27.2927mm", "Y:=", "-249.0612mm", "Z:=", "56.9056mm"), _
			Array("NAME:PLPoint", "X:=", "-36.7073mm", "Y:=", "-249.0612mm", "Z:=", "56.9056mm"), _
			Array("NAME:PLPoint", "X:=", "-36.7073mm",   "Y:=", "-240.3949mm",   "Z:=", "53.2270mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.7270mm", "Y:=", "-240.3769mm", "Z:=", "53.2193mm"), _
			Array("NAME:PLPoint", "X:=", "-11.2730mm", "Y:=", "-240.3769mm", "Z:=", "53.2193mm"), _
			Array("NAME:PLPoint", "X:=", "-11.2730mm", "Y:=", "-249.0793mm", "Z:=", "56.9133mm"), _
			Array("NAME:PLPoint", "X:=", "-20.7270mm", "Y:=", "-249.0793mm", "Z:=", "56.9133mm"), _
			Array("NAME:PLPoint", "X:=", "-20.7270mm",   "Y:=", "-240.3769mm",   "Z:=", "53.2193mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.7335mm", "Y:=", "-240.3709mm", "Z:=", "53.2168mm"), _
			Array("NAME:PLPoint", "X:=", "4.7335mm", "Y:=", "-240.3709mm", "Z:=", "53.2168mm"), _
			Array("NAME:PLPoint", "X:=", "4.7335mm", "Y:=", "-249.0853mm", "Z:=", "56.9158mm"), _
			Array("NAME:PLPoint", "X:=", "-4.7335mm", "Y:=", "-249.0853mm", "Z:=", "56.9158mm"), _
			Array("NAME:PLPoint", "X:=", "-4.7335mm",   "Y:=", "-240.3709mm",   "Z:=", "53.2168mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.2730mm", "Y:=", "-240.3769mm", "Z:=", "53.2193mm"), _
			Array("NAME:PLPoint", "X:=", "20.7270mm", "Y:=", "-240.3769mm", "Z:=", "53.2193mm"), _
			Array("NAME:PLPoint", "X:=", "20.7270mm", "Y:=", "-249.0793mm", "Z:=", "56.9133mm"), _
			Array("NAME:PLPoint", "X:=", "11.2730mm", "Y:=", "-249.0793mm", "Z:=", "56.9133mm"), _
			Array("NAME:PLPoint", "X:=", "11.2730mm",   "Y:=", "-240.3769mm",   "Z:=", "53.2193mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.2927mm", "Y:=", "-240.3949mm", "Z:=", "53.2270mm"), _
			Array("NAME:PLPoint", "X:=", "36.7073mm", "Y:=", "-240.3949mm", "Z:=", "53.2270mm"), _
			Array("NAME:PLPoint", "X:=", "36.7073mm", "Y:=", "-249.0612mm", "Z:=", "56.9056mm"), _
			Array("NAME:PLPoint", "X:=", "27.2927mm", "Y:=", "-249.0612mm", "Z:=", "56.9056mm"), _
			Array("NAME:PLPoint", "X:=", "27.2927mm",   "Y:=", "-240.3949mm",   "Z:=", "53.2270mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.3383mm", "Y:=", "-240.4370mm", "Z:=", "53.2448mm"), _
			Array("NAME:PLPoint", "X:=", "52.6617mm", "Y:=", "-240.4370mm", "Z:=", "53.2448mm"), _
			Array("NAME:PLPoint", "X:=", "52.6617mm", "Y:=", "-249.0192mm", "Z:=", "56.8878mm"), _
			Array("NAME:PLPoint", "X:=", "43.3383mm", "Y:=", "-249.0192mm", "Z:=", "56.8878mm"), _
			Array("NAME:PLPoint", "X:=", "43.3383mm",   "Y:=", "-240.4370mm",   "Z:=", "53.2448mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.4397mm", "Y:=", "-240.5303mm", "Z:=", "53.2845mm"), _
			Array("NAME:PLPoint", "X:=", "68.5603mm", "Y:=", "-240.5303mm", "Z:=", "53.2845mm"), _
			Array("NAME:PLPoint", "X:=", "68.5603mm", "Y:=", "-248.9258mm", "Z:=", "56.8481mm"), _
			Array("NAME:PLPoint", "X:=", "59.4397mm", "Y:=", "-248.9258mm", "Z:=", "56.8481mm"), _
			Array("NAME:PLPoint", "X:=", "59.4397mm",   "Y:=", "-240.5303mm",   "Z:=", "53.2845mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "75.9526mm", "Y:=", "-241.0024mm", "Z:=", "53.4849mm"), _
			Array("NAME:PLPoint", "X:=", "84.0474mm", "Y:=", "-241.0024mm", "Z:=", "53.4849mm"), _
			Array("NAME:PLPoint", "X:=", "84.0474mm", "Y:=", "-248.4537mm", "Z:=", "56.6478mm"), _
			Array("NAME:PLPoint", "X:=", "75.9526mm", "Y:=", "-248.4537mm", "Z:=", "56.6478mm"), _
			Array("NAME:PLPoint", "X:=", "75.9526mm",   "Y:=", "-241.0024mm",   "Z:=", "53.4849mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "90.6909mm", "Y:=", "-239.8410mm", "Z:=", "52.9919mm"), _
			Array("NAME:PLPoint", "X:=", "101.3091mm", "Y:=", "-239.8410mm", "Z:=", "52.9919mm"), _
			Array("NAME:PLPoint", "X:=", "101.3091mm", "Y:=", "-249.6152mm", "Z:=", "57.1408mm"), _
			Array("NAME:PLPoint", "X:=", "90.6909mm", "Y:=", "-249.6152mm", "Z:=", "57.1408mm"), _
			Array("NAME:PLPoint", "X:=", "90.6909mm",   "Y:=", "-239.8410mm",   "Z:=", "52.9919mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_9_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-101.1516mm", "Y:=", "-254.7141mm", "Z:=", "59.3051mm"), _
			Array("NAME:PLPoint", "X:=", "-90.8484mm", "Y:=", "-254.7141mm", "Z:=", "59.3051mm"), _
			Array("NAME:PLPoint", "X:=", "-90.8484mm", "Y:=", "-264.1982mm", "Z:=", "63.3309mm"), _
			Array("NAME:PLPoint", "X:=", "-101.1516mm", "Y:=", "-264.1982mm", "Z:=", "63.3309mm"), _
			Array("NAME:PLPoint", "X:=", "-101.1516mm",   "Y:=", "-254.7141mm",   "Z:=", "59.3051mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-83.1677mm", "Y:=", "-256.5403mm", "Z:=", "60.0803mm"), _
			Array("NAME:PLPoint", "X:=", "-76.8323mm", "Y:=", "-256.5403mm", "Z:=", "60.0803mm"), _
			Array("NAME:PLPoint", "X:=", "-76.8323mm", "Y:=", "-262.3720mm", "Z:=", "62.5557mm"), _
			Array("NAME:PLPoint", "X:=", "-83.1677mm", "Y:=", "-262.3720mm", "Z:=", "62.5557mm"), _
			Array("NAME:PLPoint", "X:=", "-83.1677mm",   "Y:=", "-256.5403mm",   "Z:=", "60.0803mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.5014mm", "Y:=", "-255.3126mm", "Z:=", "59.5592mm"), _
			Array("NAME:PLPoint", "X:=", "-59.4986mm", "Y:=", "-255.3126mm", "Z:=", "59.5592mm"), _
			Array("NAME:PLPoint", "X:=", "-59.4986mm", "Y:=", "-263.5997mm", "Z:=", "63.0768mm"), _
			Array("NAME:PLPoint", "X:=", "-68.5014mm", "Y:=", "-263.5997mm", "Z:=", "63.0768mm"), _
			Array("NAME:PLPoint", "X:=", "-68.5014mm",   "Y:=", "-255.3126mm",   "Z:=", "59.5592mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.6321mm", "Y:=", "-255.1923mm", "Z:=", "59.5081mm"), _
			Array("NAME:PLPoint", "X:=", "-43.3679mm", "Y:=", "-255.1923mm", "Z:=", "59.5081mm"), _
			Array("NAME:PLPoint", "X:=", "-43.3679mm", "Y:=", "-263.7200mm", "Z:=", "63.1279mm"), _
			Array("NAME:PLPoint", "X:=", "-52.6321mm", "Y:=", "-263.7200mm", "Z:=", "63.1279mm"), _
			Array("NAME:PLPoint", "X:=", "-52.6321mm",   "Y:=", "-255.1923mm",   "Z:=", "59.5081mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.6860mm", "Y:=", "-255.1427mm", "Z:=", "59.4870mm"), _
			Array("NAME:PLPoint", "X:=", "-27.3140mm", "Y:=", "-255.1427mm", "Z:=", "59.4870mm"), _
			Array("NAME:PLPoint", "X:=", "-27.3140mm", "Y:=", "-263.7696mm", "Z:=", "63.1490mm"), _
			Array("NAME:PLPoint", "X:=", "-36.6860mm", "Y:=", "-263.7696mm", "Z:=", "63.1490mm"), _
			Array("NAME:PLPoint", "X:=", "-36.6860mm",   "Y:=", "-255.1427mm",   "Z:=", "59.4870mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.7103mm", "Y:=", "-255.1203mm", "Z:=", "59.4775mm"), _
			Array("NAME:PLPoint", "X:=", "-11.2897mm", "Y:=", "-255.1203mm", "Z:=", "59.4775mm"), _
			Array("NAME:PLPoint", "X:=", "-11.2897mm", "Y:=", "-263.7920mm", "Z:=", "63.1585mm"), _
			Array("NAME:PLPoint", "X:=", "-20.7103mm", "Y:=", "-263.7920mm", "Z:=", "63.1585mm"), _
			Array("NAME:PLPoint", "X:=", "-20.7103mm",   "Y:=", "-255.1203mm",   "Z:=", "59.4775mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.7169mm", "Y:=", "-255.1142mm", "Z:=", "59.4750mm"), _
			Array("NAME:PLPoint", "X:=", "4.7169mm", "Y:=", "-255.1142mm", "Z:=", "59.4750mm"), _
			Array("NAME:PLPoint", "X:=", "4.7169mm", "Y:=", "-263.7981mm", "Z:=", "63.1610mm"), _
			Array("NAME:PLPoint", "X:=", "-4.7169mm", "Y:=", "-263.7981mm", "Z:=", "63.1610mm"), _
			Array("NAME:PLPoint", "X:=", "-4.7169mm",   "Y:=", "-255.1142mm",   "Z:=", "59.4750mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.2897mm", "Y:=", "-255.1203mm", "Z:=", "59.4775mm"), _
			Array("NAME:PLPoint", "X:=", "20.7103mm", "Y:=", "-255.1203mm", "Z:=", "59.4775mm"), _
			Array("NAME:PLPoint", "X:=", "20.7103mm", "Y:=", "-263.7920mm", "Z:=", "63.1585mm"), _
			Array("NAME:PLPoint", "X:=", "11.2897mm", "Y:=", "-263.7920mm", "Z:=", "63.1585mm"), _
			Array("NAME:PLPoint", "X:=", "11.2897mm",   "Y:=", "-255.1203mm",   "Z:=", "59.4775mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.3140mm", "Y:=", "-255.1427mm", "Z:=", "59.4870mm"), _
			Array("NAME:PLPoint", "X:=", "36.6860mm", "Y:=", "-255.1427mm", "Z:=", "59.4870mm"), _
			Array("NAME:PLPoint", "X:=", "36.6860mm", "Y:=", "-263.7696mm", "Z:=", "63.1490mm"), _
			Array("NAME:PLPoint", "X:=", "27.3140mm", "Y:=", "-263.7696mm", "Z:=", "63.1490mm"), _
			Array("NAME:PLPoint", "X:=", "27.3140mm",   "Y:=", "-255.1427mm",   "Z:=", "59.4870mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.3679mm", "Y:=", "-255.1923mm", "Z:=", "59.5081mm"), _
			Array("NAME:PLPoint", "X:=", "52.6321mm", "Y:=", "-255.1923mm", "Z:=", "59.5081mm"), _
			Array("NAME:PLPoint", "X:=", "52.6321mm", "Y:=", "-263.7200mm", "Z:=", "63.1279mm"), _
			Array("NAME:PLPoint", "X:=", "43.3679mm", "Y:=", "-263.7200mm", "Z:=", "63.1279mm"), _
			Array("NAME:PLPoint", "X:=", "43.3679mm",   "Y:=", "-255.1923mm",   "Z:=", "59.5081mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.4986mm", "Y:=", "-255.3126mm", "Z:=", "59.5592mm"), _
			Array("NAME:PLPoint", "X:=", "68.5014mm", "Y:=", "-255.3126mm", "Z:=", "59.5592mm"), _
			Array("NAME:PLPoint", "X:=", "68.5014mm", "Y:=", "-263.5997mm", "Z:=", "63.0768mm"), _
			Array("NAME:PLPoint", "X:=", "59.4986mm", "Y:=", "-263.5997mm", "Z:=", "63.0768mm"), _
			Array("NAME:PLPoint", "X:=", "59.4986mm",   "Y:=", "-255.3126mm",   "Z:=", "59.5592mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "76.8323mm", "Y:=", "-256.5403mm", "Z:=", "60.0803mm"), _
			Array("NAME:PLPoint", "X:=", "83.1677mm", "Y:=", "-256.5403mm", "Z:=", "60.0803mm"), _
			Array("NAME:PLPoint", "X:=", "83.1677mm", "Y:=", "-262.3720mm", "Z:=", "62.5557mm"), _
			Array("NAME:PLPoint", "X:=", "76.8323mm", "Y:=", "-262.3720mm", "Z:=", "62.5557mm"), _
			Array("NAME:PLPoint", "X:=", "76.8323mm",   "Y:=", "-256.5403mm",   "Z:=", "60.0803mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "90.8484mm", "Y:=", "-254.7141mm", "Z:=", "59.3051mm"), _
			Array("NAME:PLPoint", "X:=", "101.1516mm", "Y:=", "-254.7141mm", "Z:=", "59.3051mm"), _
			Array("NAME:PLPoint", "X:=", "101.1516mm", "Y:=", "-264.1982mm", "Z:=", "63.3309mm"), _
			Array("NAME:PLPoint", "X:=", "90.8484mm", "Y:=", "-264.1982mm", "Z:=", "63.3309mm"), _
			Array("NAME:PLPoint", "X:=", "90.8484mm",   "Y:=", "-254.7141mm",   "Z:=", "59.3051mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_10_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-101.0203mm", "Y:=", "-269.5630mm", "Z:=", "65.6081mm"), _
			Array("NAME:PLPoint", "X:=", "-90.9797mm", "Y:=", "-269.5630mm", "Z:=", "65.6081mm"), _
			Array("NAME:PLPoint", "X:=", "-90.9797mm", "Y:=", "-278.8054mm", "Z:=", "69.5313mm"), _
			Array("NAME:PLPoint", "X:=", "-101.0203mm", "Y:=", "-278.8054mm", "Z:=", "69.5313mm"), _
			Array("NAME:PLPoint", "X:=", "-101.0203mm",   "Y:=", "-269.5630mm",   "Z:=", "65.6081mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-86.9001mm", "Y:=", "-267.8326mm", "Z:=", "64.8736mm"), _
			Array("NAME:PLPoint", "X:=", "-73.0999mm", "Y:=", "-267.8326mm", "Z:=", "64.8736mm"), _
			Array("NAME:PLPoint", "X:=", "-73.0999mm", "Y:=", "-280.5358mm", "Z:=", "70.2658mm"), _
			Array("NAME:PLPoint", "X:=", "-86.9001mm", "Y:=", "-280.5358mm", "Z:=", "70.2658mm"), _
			Array("NAME:PLPoint", "X:=", "-86.9001mm",   "Y:=", "-267.8326mm",   "Z:=", "64.8736mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.3038mm", "Y:=", "-270.2226mm", "Z:=", "65.8881mm"), _
			Array("NAME:PLPoint", "X:=", "-59.6962mm", "Y:=", "-270.2226mm", "Z:=", "65.8881mm"), _
			Array("NAME:PLPoint", "X:=", "-59.6962mm", "Y:=", "-278.1459mm", "Z:=", "69.2513mm"), _
			Array("NAME:PLPoint", "X:=", "-68.3038mm", "Y:=", "-278.1459mm", "Z:=", "69.2513mm"), _
			Array("NAME:PLPoint", "X:=", "-68.3038mm",   "Y:=", "-270.2226mm",   "Z:=", "65.8881mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.5647mm", "Y:=", "-269.9824mm", "Z:=", "65.7861mm"), _
			Array("NAME:PLPoint", "X:=", "-43.4353mm", "Y:=", "-269.9824mm", "Z:=", "65.7861mm"), _
			Array("NAME:PLPoint", "X:=", "-43.4353mm", "Y:=", "-278.3860mm", "Z:=", "69.3533mm"), _
			Array("NAME:PLPoint", "X:=", "-52.5647mm", "Y:=", "-278.3860mm", "Z:=", "69.3533mm"), _
			Array("NAME:PLPoint", "X:=", "-52.5647mm",   "Y:=", "-269.9824mm",   "Z:=", "65.7861mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.6422mm", "Y:=", "-269.9111mm", "Z:=", "65.7559mm"), _
			Array("NAME:PLPoint", "X:=", "-27.3578mm", "Y:=", "-269.9111mm", "Z:=", "65.7559mm"), _
			Array("NAME:PLPoint", "X:=", "-27.3578mm", "Y:=", "-278.4574mm", "Z:=", "69.3835mm"), _
			Array("NAME:PLPoint", "X:=", "-36.6422mm", "Y:=", "-278.4574mm", "Z:=", "69.3835mm"), _
			Array("NAME:PLPoint", "X:=", "-36.6422mm",   "Y:=", "-269.9111mm",   "Z:=", "65.7559mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.6738mm", "Y:=", "-269.8820mm", "Z:=", "65.7435mm"), _
			Array("NAME:PLPoint", "X:=", "-11.3262mm", "Y:=", "-269.8820mm", "Z:=", "65.7435mm"), _
			Array("NAME:PLPoint", "X:=", "-11.3262mm", "Y:=", "-278.4865mm", "Z:=", "69.3959mm"), _
			Array("NAME:PLPoint", "X:=", "-20.6738mm", "Y:=", "-278.4865mm", "Z:=", "69.3959mm"), _
			Array("NAME:PLPoint", "X:=", "-20.6738mm",   "Y:=", "-269.8820mm",   "Z:=", "65.7435mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.6837mm", "Y:=", "-269.8729mm", "Z:=", "65.7396mm"), _
			Array("NAME:PLPoint", "X:=", "4.6837mm", "Y:=", "-269.8729mm", "Z:=", "65.7396mm"), _
			Array("NAME:PLPoint", "X:=", "4.6837mm", "Y:=", "-278.4956mm", "Z:=", "69.3997mm"), _
			Array("NAME:PLPoint", "X:=", "-4.6837mm", "Y:=", "-278.4956mm", "Z:=", "69.3997mm"), _
			Array("NAME:PLPoint", "X:=", "-4.6837mm",   "Y:=", "-269.8729mm",   "Z:=", "65.7396mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.3262mm", "Y:=", "-269.8820mm", "Z:=", "65.7435mm"), _
			Array("NAME:PLPoint", "X:=", "20.6738mm", "Y:=", "-269.8820mm", "Z:=", "65.7435mm"), _
			Array("NAME:PLPoint", "X:=", "20.6738mm", "Y:=", "-278.4865mm", "Z:=", "69.3959mm"), _
			Array("NAME:PLPoint", "X:=", "11.3262mm", "Y:=", "-278.4865mm", "Z:=", "69.3959mm"), _
			Array("NAME:PLPoint", "X:=", "11.3262mm",   "Y:=", "-269.8820mm",   "Z:=", "65.7435mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.3578mm", "Y:=", "-269.9111mm", "Z:=", "65.7559mm"), _
			Array("NAME:PLPoint", "X:=", "36.6422mm", "Y:=", "-269.9111mm", "Z:=", "65.7559mm"), _
			Array("NAME:PLPoint", "X:=", "36.6422mm", "Y:=", "-278.4574mm", "Z:=", "69.3835mm"), _
			Array("NAME:PLPoint", "X:=", "27.3578mm", "Y:=", "-278.4574mm", "Z:=", "69.3835mm"), _
			Array("NAME:PLPoint", "X:=", "27.3578mm",   "Y:=", "-269.9111mm",   "Z:=", "65.7559mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.4353mm", "Y:=", "-269.9824mm", "Z:=", "65.7861mm"), _
			Array("NAME:PLPoint", "X:=", "52.5647mm", "Y:=", "-269.9824mm", "Z:=", "65.7861mm"), _
			Array("NAME:PLPoint", "X:=", "52.5647mm", "Y:=", "-278.3860mm", "Z:=", "69.3533mm"), _
			Array("NAME:PLPoint", "X:=", "43.4353mm", "Y:=", "-278.3860mm", "Z:=", "69.3533mm"), _
			Array("NAME:PLPoint", "X:=", "43.4353mm",   "Y:=", "-269.9824mm",   "Z:=", "65.7861mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.6962mm", "Y:=", "-270.2226mm", "Z:=", "65.8881mm"), _
			Array("NAME:PLPoint", "X:=", "68.3038mm", "Y:=", "-270.2226mm", "Z:=", "65.8881mm"), _
			Array("NAME:PLPoint", "X:=", "68.3038mm", "Y:=", "-278.1459mm", "Z:=", "69.2513mm"), _
			Array("NAME:PLPoint", "X:=", "59.6962mm", "Y:=", "-278.1459mm", "Z:=", "69.2513mm"), _
			Array("NAME:PLPoint", "X:=", "59.6962mm",   "Y:=", "-270.2226mm",   "Z:=", "65.8881mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "73.0999mm", "Y:=", "-267.8326mm", "Z:=", "64.8736mm"), _
			Array("NAME:PLPoint", "X:=", "86.9001mm", "Y:=", "-267.8326mm", "Z:=", "64.8736mm"), _
			Array("NAME:PLPoint", "X:=", "86.9001mm", "Y:=", "-280.5358mm", "Z:=", "70.2658mm"), _
			Array("NAME:PLPoint", "X:=", "73.0999mm", "Y:=", "-280.5358mm", "Z:=", "70.2658mm"), _
			Array("NAME:PLPoint", "X:=", "73.0999mm",   "Y:=", "-267.8326mm",   "Z:=", "64.8736mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "90.9797mm", "Y:=", "-269.5630mm", "Z:=", "65.6081mm"), _
			Array("NAME:PLPoint", "X:=", "101.0203mm", "Y:=", "-269.5630mm", "Z:=", "65.6081mm"), _
			Array("NAME:PLPoint", "X:=", "101.0203mm", "Y:=", "-278.8054mm", "Z:=", "69.5313mm"), _
			Array("NAME:PLPoint", "X:=", "90.9797mm", "Y:=", "-278.8054mm", "Z:=", "69.5313mm"), _
			Array("NAME:PLPoint", "X:=", "90.9797mm",   "Y:=", "-269.5630mm",   "Z:=", "65.6081mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_11_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-100.9250mm", "Y:=", "-284.3788mm", "Z:=", "71.8970mm"), _
			Array("NAME:PLPoint", "X:=", "-91.0750mm", "Y:=", "-284.3788mm", "Z:=", "71.8970mm"), _
			Array("NAME:PLPoint", "X:=", "-91.0750mm", "Y:=", "-293.4458mm", "Z:=", "75.7458mm"), _
			Array("NAME:PLPoint", "X:=", "-100.9250mm", "Y:=", "-293.4458mm", "Z:=", "75.7458mm"), _
			Array("NAME:PLPoint", "X:=", "-100.9250mm",   "Y:=", "-284.3788mm",   "Z:=", "71.8970mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-85.1922mm", "Y:=", "-284.1328mm", "Z:=", "71.7926mm"), _
			Array("NAME:PLPoint", "X:=", "-74.8078mm", "Y:=", "-284.1328mm", "Z:=", "71.7926mm"), _
			Array("NAME:PLPoint", "X:=", "-74.8078mm", "Y:=", "-293.6918mm", "Z:=", "75.8502mm"), _
			Array("NAME:PLPoint", "X:=", "-85.1922mm", "Y:=", "-293.6918mm", "Z:=", "75.8502mm"), _
			Array("NAME:PLPoint", "X:=", "-85.1922mm",   "Y:=", "-284.1328mm",   "Z:=", "71.7926mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-66.5984mm", "Y:=", "-286.5205mm", "Z:=", "72.8061mm"), _
			Array("NAME:PLPoint", "X:=", "-61.4016mm", "Y:=", "-286.5205mm", "Z:=", "72.8061mm"), _
			Array("NAME:PLPoint", "X:=", "-61.4016mm", "Y:=", "-291.3041mm", "Z:=", "74.8367mm"), _
			Array("NAME:PLPoint", "X:=", "-66.5984mm", "Y:=", "-291.3041mm", "Z:=", "74.8367mm"), _
			Array("NAME:PLPoint", "X:=", "-66.5984mm",   "Y:=", "-286.5205mm",   "Z:=", "72.8061mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.3714mm", "Y:=", "-284.8884mm", "Z:=", "72.1133mm"), _
			Array("NAME:PLPoint", "X:=", "-43.6286mm", "Y:=", "-284.8884mm", "Z:=", "72.1133mm"), _
			Array("NAME:PLPoint", "X:=", "-43.6286mm", "Y:=", "-292.9363mm", "Z:=", "75.5295mm"), _
			Array("NAME:PLPoint", "X:=", "-52.3714mm", "Y:=", "-292.9363mm", "Z:=", "75.5295mm"), _
			Array("NAME:PLPoint", "X:=", "-52.3714mm",   "Y:=", "-284.8884mm",   "Z:=", "72.1133mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.5455mm", "Y:=", "-284.7281mm", "Z:=", "72.0453mm"), _
			Array("NAME:PLPoint", "X:=", "-27.4545mm", "Y:=", "-284.7281mm", "Z:=", "72.0453mm"), _
			Array("NAME:PLPoint", "X:=", "-27.4545mm", "Y:=", "-293.0965mm", "Z:=", "75.5975mm"), _
			Array("NAME:PLPoint", "X:=", "-36.5455mm", "Y:=", "-293.0965mm", "Z:=", "75.5975mm"), _
			Array("NAME:PLPoint", "X:=", "-36.5455mm",   "Y:=", "-284.7281mm",   "Z:=", "72.0453mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.6036mm", "Y:=", "-284.6746mm", "Z:=", "72.0226mm"), _
			Array("NAME:PLPoint", "X:=", "-11.3964mm", "Y:=", "-284.6746mm", "Z:=", "72.0226mm"), _
			Array("NAME:PLPoint", "X:=", "-11.3964mm", "Y:=", "-293.1500mm", "Z:=", "75.6202mm"), _
			Array("NAME:PLPoint", "X:=", "-20.6036mm", "Y:=", "-293.1500mm", "Z:=", "75.6202mm"), _
			Array("NAME:PLPoint", "X:=", "-20.6036mm",   "Y:=", "-284.6746mm",   "Z:=", "72.0226mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.6168mm", "Y:=", "-284.6625mm", "Z:=", "72.0175mm"), _
			Array("NAME:PLPoint", "X:=", "4.6168mm", "Y:=", "-284.6625mm", "Z:=", "72.0175mm"), _
			Array("NAME:PLPoint", "X:=", "4.6168mm", "Y:=", "-293.1621mm", "Z:=", "75.6253mm"), _
			Array("NAME:PLPoint", "X:=", "-4.6168mm", "Y:=", "-293.1621mm", "Z:=", "75.6253mm"), _
			Array("NAME:PLPoint", "X:=", "-4.6168mm",   "Y:=", "-284.6625mm",   "Z:=", "72.0175mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.3964mm", "Y:=", "-284.6746mm", "Z:=", "72.0226mm"), _
			Array("NAME:PLPoint", "X:=", "20.6036mm", "Y:=", "-284.6746mm", "Z:=", "72.0226mm"), _
			Array("NAME:PLPoint", "X:=", "20.6036mm", "Y:=", "-293.1500mm", "Z:=", "75.6202mm"), _
			Array("NAME:PLPoint", "X:=", "11.3964mm", "Y:=", "-293.1500mm", "Z:=", "75.6202mm"), _
			Array("NAME:PLPoint", "X:=", "11.3964mm",   "Y:=", "-284.6746mm",   "Z:=", "72.0226mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.4545mm", "Y:=", "-284.7281mm", "Z:=", "72.0453mm"), _
			Array("NAME:PLPoint", "X:=", "36.5455mm", "Y:=", "-284.7281mm", "Z:=", "72.0453mm"), _
			Array("NAME:PLPoint", "X:=", "36.5455mm", "Y:=", "-293.0965mm", "Z:=", "75.5975mm"), _
			Array("NAME:PLPoint", "X:=", "27.4545mm", "Y:=", "-293.0965mm", "Z:=", "75.5975mm"), _
			Array("NAME:PLPoint", "X:=", "27.4545mm",   "Y:=", "-284.7281mm",   "Z:=", "72.0453mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.6286mm", "Y:=", "-284.8884mm", "Z:=", "72.1133mm"), _
			Array("NAME:PLPoint", "X:=", "52.3714mm", "Y:=", "-284.8884mm", "Z:=", "72.1133mm"), _
			Array("NAME:PLPoint", "X:=", "52.3714mm", "Y:=", "-292.9363mm", "Z:=", "75.5295mm"), _
			Array("NAME:PLPoint", "X:=", "43.6286mm", "Y:=", "-292.9363mm", "Z:=", "75.5295mm"), _
			Array("NAME:PLPoint", "X:=", "43.6286mm",   "Y:=", "-284.8884mm",   "Z:=", "72.1133mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "61.4016mm", "Y:=", "-286.5205mm", "Z:=", "72.8061mm"), _
			Array("NAME:PLPoint", "X:=", "66.5984mm", "Y:=", "-286.5205mm", "Z:=", "72.8061mm"), _
			Array("NAME:PLPoint", "X:=", "66.5984mm", "Y:=", "-291.3041mm", "Z:=", "74.8367mm"), _
			Array("NAME:PLPoint", "X:=", "61.4016mm", "Y:=", "-291.3041mm", "Z:=", "74.8367mm"), _
			Array("NAME:PLPoint", "X:=", "61.4016mm",   "Y:=", "-286.5205mm",   "Z:=", "72.8061mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "74.8078mm", "Y:=", "-284.1328mm", "Z:=", "71.7926mm"), _
			Array("NAME:PLPoint", "X:=", "85.1922mm", "Y:=", "-284.1328mm", "Z:=", "71.7926mm"), _
			Array("NAME:PLPoint", "X:=", "85.1922mm", "Y:=", "-293.6918mm", "Z:=", "75.8502mm"), _
			Array("NAME:PLPoint", "X:=", "74.8078mm", "Y:=", "-293.6918mm", "Z:=", "75.8502mm"), _
			Array("NAME:PLPoint", "X:=", "74.8078mm",   "Y:=", "-284.1328mm",   "Z:=", "71.7926mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "91.0750mm", "Y:=", "-284.3788mm", "Z:=", "71.8970mm"), _
			Array("NAME:PLPoint", "X:=", "100.9250mm", "Y:=", "-284.3788mm", "Z:=", "71.8970mm"), _
			Array("NAME:PLPoint", "X:=", "100.9250mm", "Y:=", "-293.4458mm", "Z:=", "75.7458mm"), _
			Array("NAME:PLPoint", "X:=", "91.0750mm", "Y:=", "-293.4458mm", "Z:=", "75.7458mm"), _
			Array("NAME:PLPoint", "X:=", "91.0750mm",   "Y:=", "-284.3788mm",   "Z:=", "71.8970mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_12_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-100.8571mm", "Y:=", "-299.1694mm", "Z:=", "78.1753mm"), _
			Array("NAME:PLPoint", "X:=", "-91.1429mm", "Y:=", "-299.1694mm", "Z:=", "78.1753mm"), _
			Array("NAME:PLPoint", "X:=", "-91.1429mm", "Y:=", "-308.1113mm", "Z:=", "81.9709mm"), _
			Array("NAME:PLPoint", "X:=", "-100.8571mm", "Y:=", "-308.1113mm", "Z:=", "81.9709mm"), _
			Array("NAME:PLPoint", "X:=", "-100.8571mm",   "Y:=", "-299.1694mm",   "Z:=", "78.1753mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-84.9670mm", "Y:=", "-299.0683mm", "Z:=", "78.1323mm"), _
			Array("NAME:PLPoint", "X:=", "-75.0330mm", "Y:=", "-299.0683mm", "Z:=", "78.1323mm"), _
			Array("NAME:PLPoint", "X:=", "-75.0330mm", "Y:=", "-308.2125mm", "Z:=", "82.0138mm"), _
			Array("NAME:PLPoint", "X:=", "-84.9670mm", "Y:=", "-308.2125mm", "Z:=", "82.0138mm"), _
			Array("NAME:PLPoint", "X:=", "-84.9670mm",   "Y:=", "-299.0683mm",   "Z:=", "78.1323mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-69.2828mm", "Y:=", "-298.7776mm", "Z:=", "78.0090mm"), _
			Array("NAME:PLPoint", "X:=", "-58.7172mm", "Y:=", "-298.7776mm", "Z:=", "78.0090mm"), _
			Array("NAME:PLPoint", "X:=", "-58.7172mm", "Y:=", "-308.5032mm", "Z:=", "82.1372mm"), _
			Array("NAME:PLPoint", "X:=", "-69.2828mm", "Y:=", "-308.5032mm", "Z:=", "82.1372mm"), _
			Array("NAME:PLPoint", "X:=", "-69.2828mm",   "Y:=", "-298.7776mm",   "Z:=", "78.0090mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-51.5106mm", "Y:=", "-300.4088mm", "Z:=", "78.7014mm"), _
			Array("NAME:PLPoint", "X:=", "-44.4894mm", "Y:=", "-300.4088mm", "Z:=", "78.7014mm"), _
			Array("NAME:PLPoint", "X:=", "-44.4894mm", "Y:=", "-306.8719mm", "Z:=", "81.4448mm"), _
			Array("NAME:PLPoint", "X:=", "-51.5106mm", "Y:=", "-306.8719mm", "Z:=", "81.4448mm"), _
			Array("NAME:PLPoint", "X:=", "-51.5106mm",   "Y:=", "-300.4088mm",   "Z:=", "78.7014mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.1447mm", "Y:=", "-299.8251mm", "Z:=", "78.4536mm"), _
			Array("NAME:PLPoint", "X:=", "-27.8553mm", "Y:=", "-299.8251mm", "Z:=", "78.4536mm"), _
			Array("NAME:PLPoint", "X:=", "-27.8553mm", "Y:=", "-307.4556mm", "Z:=", "81.6926mm"), _
			Array("NAME:PLPoint", "X:=", "-36.1447mm", "Y:=", "-307.4556mm", "Z:=", "81.6926mm"), _
			Array("NAME:PLPoint", "X:=", "-36.1447mm",   "Y:=", "-299.8251mm",   "Z:=", "78.4536mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-20.3924mm", "Y:=", "-299.5971mm", "Z:=", "78.3568mm"), _
			Array("NAME:PLPoint", "X:=", "-11.6076mm", "Y:=", "-299.5971mm", "Z:=", "78.3568mm"), _
			Array("NAME:PLPoint", "X:=", "-11.6076mm", "Y:=", "-307.6836mm", "Z:=", "81.7894mm"), _
			Array("NAME:PLPoint", "X:=", "-20.3924mm", "Y:=", "-307.6836mm", "Z:=", "81.7894mm"), _
			Array("NAME:PLPoint", "X:=", "-20.3924mm",   "Y:=", "-299.5971mm",   "Z:=", "78.3568mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-4.4349mm", "Y:=", "-299.5581mm", "Z:=", "78.3403mm"), _
			Array("NAME:PLPoint", "X:=", "4.4349mm", "Y:=", "-299.5581mm", "Z:=", "78.3403mm"), _
			Array("NAME:PLPoint", "X:=", "4.4349mm", "Y:=", "-307.7227mm", "Z:=", "81.8059mm"), _
			Array("NAME:PLPoint", "X:=", "-4.4349mm", "Y:=", "-307.7227mm", "Z:=", "81.8059mm"), _
			Array("NAME:PLPoint", "X:=", "-4.4349mm",   "Y:=", "-299.5581mm",   "Z:=", "78.3403mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "11.6076mm", "Y:=", "-299.5971mm", "Z:=", "78.3568mm"), _
			Array("NAME:PLPoint", "X:=", "20.3924mm", "Y:=", "-299.5971mm", "Z:=", "78.3568mm"), _
			Array("NAME:PLPoint", "X:=", "20.3924mm", "Y:=", "-307.6836mm", "Z:=", "81.7894mm"), _
			Array("NAME:PLPoint", "X:=", "11.6076mm", "Y:=", "-307.6836mm", "Z:=", "81.7894mm"), _
			Array("NAME:PLPoint", "X:=", "11.6076mm",   "Y:=", "-299.5971mm",   "Z:=", "78.3568mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.8553mm", "Y:=", "-299.8251mm", "Z:=", "78.4536mm"), _
			Array("NAME:PLPoint", "X:=", "36.1447mm", "Y:=", "-299.8251mm", "Z:=", "78.4536mm"), _
			Array("NAME:PLPoint", "X:=", "36.1447mm", "Y:=", "-307.4556mm", "Z:=", "81.6926mm"), _
			Array("NAME:PLPoint", "X:=", "27.8553mm", "Y:=", "-307.4556mm", "Z:=", "81.6926mm"), _
			Array("NAME:PLPoint", "X:=", "27.8553mm",   "Y:=", "-299.8251mm",   "Z:=", "78.4536mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "44.4894mm", "Y:=", "-300.4088mm", "Z:=", "78.7014mm"), _
			Array("NAME:PLPoint", "X:=", "51.5106mm", "Y:=", "-300.4088mm", "Z:=", "78.7014mm"), _
			Array("NAME:PLPoint", "X:=", "51.5106mm", "Y:=", "-306.8719mm", "Z:=", "81.4448mm"), _
			Array("NAME:PLPoint", "X:=", "44.4894mm", "Y:=", "-306.8719mm", "Z:=", "81.4448mm"), _
			Array("NAME:PLPoint", "X:=", "44.4894mm",   "Y:=", "-300.4088mm",   "Z:=", "78.7014mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "58.7172mm", "Y:=", "-298.7776mm", "Z:=", "78.0090mm"), _
			Array("NAME:PLPoint", "X:=", "69.2828mm", "Y:=", "-298.7776mm", "Z:=", "78.0090mm"), _
			Array("NAME:PLPoint", "X:=", "69.2828mm", "Y:=", "-308.5032mm", "Z:=", "82.1372mm"), _
			Array("NAME:PLPoint", "X:=", "58.7172mm", "Y:=", "-308.5032mm", "Z:=", "82.1372mm"), _
			Array("NAME:PLPoint", "X:=", "58.7172mm",   "Y:=", "-298.7776mm",   "Z:=", "78.0090mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "75.0330mm", "Y:=", "-299.0683mm", "Z:=", "78.1323mm"), _
			Array("NAME:PLPoint", "X:=", "84.9670mm", "Y:=", "-299.0683mm", "Z:=", "78.1323mm"), _
			Array("NAME:PLPoint", "X:=", "84.9670mm", "Y:=", "-308.2125mm", "Z:=", "82.0138mm"), _
			Array("NAME:PLPoint", "X:=", "75.0330mm", "Y:=", "-308.2125mm", "Z:=", "82.0138mm"), _
			Array("NAME:PLPoint", "X:=", "75.0330mm",   "Y:=", "-299.0683mm",   "Z:=", "78.1323mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "91.1429mm", "Y:=", "-299.1694mm", "Z:=", "78.1753mm"), _
			Array("NAME:PLPoint", "X:=", "100.8571mm", "Y:=", "-299.1694mm", "Z:=", "78.1753mm"), _
			Array("NAME:PLPoint", "X:=", "100.8571mm", "Y:=", "-308.1113mm", "Z:=", "81.9709mm"), _
			Array("NAME:PLPoint", "X:=", "91.1429mm", "Y:=", "-308.1113mm", "Z:=", "81.9709mm"), _
			Array("NAME:PLPoint", "X:=", "91.1429mm",   "Y:=", "-299.1694mm",   "Z:=", "78.1753mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_13_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-100.7958mm", "Y:=", "-313.9539mm", "Z:=", "84.4509mm"), _
			Array("NAME:PLPoint", "X:=", "-91.2042mm", "Y:=", "-313.9539mm", "Z:=", "84.4509mm"), _
			Array("NAME:PLPoint", "X:=", "-91.2042mm", "Y:=", "-322.7831mm", "Z:=", "88.1987mm"), _
			Array("NAME:PLPoint", "X:=", "-100.7958mm", "Y:=", "-322.7831mm", "Z:=", "88.1987mm"), _
			Array("NAME:PLPoint", "X:=", "-100.7958mm",   "Y:=", "-313.9539mm",   "Z:=", "84.4509mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-84.8713mm", "Y:=", "-313.8844mm", "Z:=", "84.4214mm"), _
			Array("NAME:PLPoint", "X:=", "-75.1287mm", "Y:=", "-313.8844mm", "Z:=", "84.4214mm"), _
			Array("NAME:PLPoint", "X:=", "-75.1287mm", "Y:=", "-322.8525mm", "Z:=", "88.2282mm"), _
			Array("NAME:PLPoint", "X:=", "-84.8713mm", "Y:=", "-322.8525mm", "Z:=", "88.2282mm"), _
			Array("NAME:PLPoint", "X:=", "-84.8713mm",   "Y:=", "-313.8844mm",   "Z:=", "84.4214mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.9607mm", "Y:=", "-313.8021mm", "Z:=", "84.3865mm"), _
			Array("NAME:PLPoint", "X:=", "-59.0393mm", "Y:=", "-313.8021mm", "Z:=", "84.3865mm"), _
			Array("NAME:PLPoint", "X:=", "-59.0393mm", "Y:=", "-322.9348mm", "Z:=", "88.2631mm"), _
			Array("NAME:PLPoint", "X:=", "-68.9607mm", "Y:=", "-322.9348mm", "Z:=", "88.2631mm"), _
			Array("NAME:PLPoint", "X:=", "-68.9607mm",   "Y:=", "-313.8021mm",   "Z:=", "84.3865mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-53.1473mm", "Y:=", "-313.6303mm", "Z:=", "84.3136mm"), _
			Array("NAME:PLPoint", "X:=", "-42.8527mm", "Y:=", "-313.6303mm", "Z:=", "84.3136mm"), _
			Array("NAME:PLPoint", "X:=", "-42.8527mm", "Y:=", "-323.1066mm", "Z:=", "88.3360mm"), _
			Array("NAME:PLPoint", "X:=", "-53.1473mm", "Y:=", "-323.1066mm", "Z:=", "88.3360mm"), _
			Array("NAME:PLPoint", "X:=", "-53.1473mm",   "Y:=", "-313.6303mm",   "Z:=", "84.3136mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-37.6732mm", "Y:=", "-313.1463mm", "Z:=", "84.1081mm"), _
			Array("NAME:PLPoint", "X:=", "-26.3268mm", "Y:=", "-313.1463mm", "Z:=", "84.1081mm"), _
			Array("NAME:PLPoint", "X:=", "-26.3268mm", "Y:=", "-323.5907mm", "Z:=", "88.5415mm"), _
			Array("NAME:PLPoint", "X:=", "-37.6732mm", "Y:=", "-323.5907mm", "Z:=", "88.5415mm"), _
			Array("NAME:PLPoint", "X:=", "-37.6732mm",   "Y:=", "-313.1463mm",   "Z:=", "84.1081mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-21.4392mm", "Y:=", "-313.3616mm", "Z:=", "84.1995mm"), _
			Array("NAME:PLPoint", "X:=", "-10.5608mm", "Y:=", "-313.3616mm", "Z:=", "84.1995mm"), _
			Array("NAME:PLPoint", "X:=", "-10.5608mm", "Y:=", "-323.3753mm", "Z:=", "88.4501mm"), _
			Array("NAME:PLPoint", "X:=", "-21.4392mm", "Y:=", "-323.3753mm", "Z:=", "88.4501mm"), _
			Array("NAME:PLPoint", "X:=", "-21.4392mm",   "Y:=", "-313.3616mm",   "Z:=", "84.1995mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-3.9760mm", "Y:=", "-314.7085mm", "Z:=", "84.7712mm"), _
			Array("NAME:PLPoint", "X:=", "3.9760mm", "Y:=", "-314.7085mm", "Z:=", "84.7712mm"), _
			Array("NAME:PLPoint", "X:=", "3.9760mm", "Y:=", "-322.0284mm", "Z:=", "87.8783mm"), _
			Array("NAME:PLPoint", "X:=", "-3.9760mm", "Y:=", "-322.0284mm", "Z:=", "87.8783mm"), _
			Array("NAME:PLPoint", "X:=", "-3.9760mm",   "Y:=", "-314.7085mm",   "Z:=", "84.7712mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "10.5608mm", "Y:=", "-313.3616mm", "Z:=", "84.1995mm"), _
			Array("NAME:PLPoint", "X:=", "21.4392mm", "Y:=", "-313.3616mm", "Z:=", "84.1995mm"), _
			Array("NAME:PLPoint", "X:=", "21.4392mm", "Y:=", "-323.3753mm", "Z:=", "88.4501mm"), _
			Array("NAME:PLPoint", "X:=", "10.5608mm", "Y:=", "-323.3753mm", "Z:=", "88.4501mm"), _
			Array("NAME:PLPoint", "X:=", "10.5608mm",   "Y:=", "-313.3616mm",   "Z:=", "84.1995mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "26.3268mm", "Y:=", "-313.1463mm", "Z:=", "84.1081mm"), _
			Array("NAME:PLPoint", "X:=", "37.6732mm", "Y:=", "-313.1463mm", "Z:=", "84.1081mm"), _
			Array("NAME:PLPoint", "X:=", "37.6732mm", "Y:=", "-323.5907mm", "Z:=", "88.5415mm"), _
			Array("NAME:PLPoint", "X:=", "26.3268mm", "Y:=", "-323.5907mm", "Z:=", "88.5415mm"), _
			Array("NAME:PLPoint", "X:=", "26.3268mm",   "Y:=", "-313.1463mm",   "Z:=", "84.1081mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "42.8527mm", "Y:=", "-313.6303mm", "Z:=", "84.3136mm"), _
			Array("NAME:PLPoint", "X:=", "53.1473mm", "Y:=", "-313.6303mm", "Z:=", "84.3136mm"), _
			Array("NAME:PLPoint", "X:=", "53.1473mm", "Y:=", "-323.1066mm", "Z:=", "88.3360mm"), _
			Array("NAME:PLPoint", "X:=", "42.8527mm", "Y:=", "-323.1066mm", "Z:=", "88.3360mm"), _
			Array("NAME:PLPoint", "X:=", "42.8527mm",   "Y:=", "-313.6303mm",   "Z:=", "84.3136mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.0393mm", "Y:=", "-313.8021mm", "Z:=", "84.3865mm"), _
			Array("NAME:PLPoint", "X:=", "68.9607mm", "Y:=", "-313.8021mm", "Z:=", "84.3865mm"), _
			Array("NAME:PLPoint", "X:=", "68.9607mm", "Y:=", "-322.9348mm", "Z:=", "88.2631mm"), _
			Array("NAME:PLPoint", "X:=", "59.0393mm", "Y:=", "-322.9348mm", "Z:=", "88.2631mm"), _
			Array("NAME:PLPoint", "X:=", "59.0393mm",   "Y:=", "-313.8021mm",   "Z:=", "84.3865mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "75.1287mm", "Y:=", "-313.8844mm", "Z:=", "84.4214mm"), _
			Array("NAME:PLPoint", "X:=", "84.8713mm", "Y:=", "-313.8844mm", "Z:=", "84.4214mm"), _
			Array("NAME:PLPoint", "X:=", "84.8713mm", "Y:=", "-322.8525mm", "Z:=", "88.2282mm"), _
			Array("NAME:PLPoint", "X:=", "75.1287mm", "Y:=", "-322.8525mm", "Z:=", "88.2282mm"), _
			Array("NAME:PLPoint", "X:=", "75.1287mm",   "Y:=", "-313.8844mm",   "Z:=", "84.4214mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "91.2042mm", "Y:=", "-313.9539mm", "Z:=", "84.4509mm"), _
			Array("NAME:PLPoint", "X:=", "100.7958mm", "Y:=", "-313.9539mm", "Z:=", "84.4509mm"), _
			Array("NAME:PLPoint", "X:=", "100.7958mm", "Y:=", "-322.7831mm", "Z:=", "88.1987mm"), _
			Array("NAME:PLPoint", "X:=", "91.2042mm", "Y:=", "-322.7831mm", "Z:=", "88.1987mm"), _
			Array("NAME:PLPoint", "X:=", "91.2042mm",   "Y:=", "-313.9539mm",   "Z:=", "84.4509mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_14_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-100.7297mm", "Y:=", "-328.7428mm", "Z:=", "90.7284mm"), _
			Array("NAME:PLPoint", "X:=", "-91.2703mm", "Y:=", "-328.7428mm", "Z:=", "90.7284mm"), _
			Array("NAME:PLPoint", "X:=", "-91.2703mm", "Y:=", "-337.4503mm", "Z:=", "94.4245mm"), _
			Array("NAME:PLPoint", "X:=", "-100.7297mm", "Y:=", "-337.4503mm", "Z:=", "94.4245mm"), _
			Array("NAME:PLPoint", "X:=", "-100.7297mm",   "Y:=", "-328.7428mm",   "Z:=", "90.7284mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-84.7958mm", "Y:=", "-328.6820mm", "Z:=", "90.7026mm"), _
			Array("NAME:PLPoint", "X:=", "-75.2042mm", "Y:=", "-328.6820mm", "Z:=", "90.7026mm"), _
			Array("NAME:PLPoint", "X:=", "-75.2042mm", "Y:=", "-337.5111mm", "Z:=", "94.4504mm"), _
			Array("NAME:PLPoint", "X:=", "-84.7958mm", "Y:=", "-337.5111mm", "Z:=", "94.4504mm"), _
			Array("NAME:PLPoint", "X:=", "-84.7958mm",   "Y:=", "-328.6820mm",   "Z:=", "90.7026mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-68.8544mm", "Y:=", "-328.6281mm", "Z:=", "90.6797mm"), _
			Array("NAME:PLPoint", "X:=", "-59.1456mm", "Y:=", "-328.6281mm", "Z:=", "90.6797mm"), _
			Array("NAME:PLPoint", "X:=", "-59.1456mm", "Y:=", "-337.5650mm", "Z:=", "94.4732mm"), _
			Array("NAME:PLPoint", "X:=", "-68.8544mm", "Y:=", "-337.5650mm", "Z:=", "94.4732mm"), _
			Array("NAME:PLPoint", "X:=", "-68.8544mm",   "Y:=", "-328.6281mm",   "Z:=", "90.6797mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-52.9157mm", "Y:=", "-328.5716mm", "Z:=", "90.6558mm"), _
			Array("NAME:PLPoint", "X:=", "-43.0843mm", "Y:=", "-328.5716mm", "Z:=", "90.6558mm"), _
			Array("NAME:PLPoint", "X:=", "-43.0843mm", "Y:=", "-337.6215mm", "Z:=", "94.4972mm"), _
			Array("NAME:PLPoint", "X:=", "-52.9157mm", "Y:=", "-337.6215mm", "Z:=", "94.4972mm"), _
			Array("NAME:PLPoint", "X:=", "-52.9157mm",   "Y:=", "-328.5716mm",   "Z:=", "90.6558mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-36.9803mm", "Y:=", "-328.5121mm", "Z:=", "90.6305mm"), _
			Array("NAME:PLPoint", "X:=", "-27.0197mm", "Y:=", "-328.5121mm", "Z:=", "90.6305mm"), _
			Array("NAME:PLPoint", "X:=", "-27.0197mm", "Y:=", "-337.6810mm", "Z:=", "94.5225mm"), _
			Array("NAME:PLPoint", "X:=", "-36.9803mm", "Y:=", "-337.6810mm", "Z:=", "94.5225mm"), _
			Array("NAME:PLPoint", "X:=", "-36.9803mm",   "Y:=", "-328.5121mm",   "Z:=", "90.6305mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-21.0463mm", "Y:=", "-328.4514mm", "Z:=", "90.6047mm"), _
			Array("NAME:PLPoint", "X:=", "-10.9537mm", "Y:=", "-328.4514mm", "Z:=", "90.6047mm"), _
			Array("NAME:PLPoint", "X:=", "-10.9537mm", "Y:=", "-337.7417mm", "Z:=", "94.5482mm"), _
			Array("NAME:PLPoint", "X:=", "-21.0463mm", "Y:=", "-337.7417mm", "Z:=", "94.5482mm"), _
			Array("NAME:PLPoint", "X:=", "-21.0463mm",   "Y:=", "-328.4514mm",   "Z:=", "90.6047mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "-5.0739mm", "Y:=", "-328.4260mm", "Z:=", "90.5940mm"), _
			Array("NAME:PLPoint", "X:=", "5.0739mm", "Y:=", "-328.4260mm", "Z:=", "90.5940mm"), _
			Array("NAME:PLPoint", "X:=", "5.0739mm", "Y:=", "-337.7671mm", "Z:=", "94.5590mm"), _
			Array("NAME:PLPoint", "X:=", "-5.0739mm", "Y:=", "-337.7671mm", "Z:=", "94.5590mm"), _
			Array("NAME:PLPoint", "X:=", "-5.0739mm",   "Y:=", "-328.4260mm",   "Z:=", "90.5940mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "10.9537mm", "Y:=", "-328.4514mm", "Z:=", "90.6047mm"), _
			Array("NAME:PLPoint", "X:=", "21.0463mm", "Y:=", "-328.4514mm", "Z:=", "90.6047mm"), _
			Array("NAME:PLPoint", "X:=", "21.0463mm", "Y:=", "-337.7417mm", "Z:=", "94.5482mm"), _
			Array("NAME:PLPoint", "X:=", "10.9537mm", "Y:=", "-337.7417mm", "Z:=", "94.5482mm"), _
			Array("NAME:PLPoint", "X:=", "10.9537mm",   "Y:=", "-328.4514mm",   "Z:=", "90.6047mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "27.0197mm", "Y:=", "-328.5121mm", "Z:=", "90.6305mm"), _
			Array("NAME:PLPoint", "X:=", "36.9803mm", "Y:=", "-328.5121mm", "Z:=", "90.6305mm"), _
			Array("NAME:PLPoint", "X:=", "36.9803mm", "Y:=", "-337.6810mm", "Z:=", "94.5225mm"), _
			Array("NAME:PLPoint", "X:=", "27.0197mm", "Y:=", "-337.6810mm", "Z:=", "94.5225mm"), _
			Array("NAME:PLPoint", "X:=", "27.0197mm",   "Y:=", "-328.5121mm",   "Z:=", "90.6305mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "43.0843mm", "Y:=", "-328.5716mm", "Z:=", "90.6558mm"), _
			Array("NAME:PLPoint", "X:=", "52.9157mm", "Y:=", "-328.5716mm", "Z:=", "90.6558mm"), _
			Array("NAME:PLPoint", "X:=", "52.9157mm", "Y:=", "-337.6215mm", "Z:=", "94.4972mm"), _
			Array("NAME:PLPoint", "X:=", "43.0843mm", "Y:=", "-337.6215mm", "Z:=", "94.4972mm"), _
			Array("NAME:PLPoint", "X:=", "43.0843mm",   "Y:=", "-328.5716mm",   "Z:=", "90.6558mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "59.1456mm", "Y:=", "-328.6281mm", "Z:=", "90.6797mm"), _
			Array("NAME:PLPoint", "X:=", "68.8544mm", "Y:=", "-328.6281mm", "Z:=", "90.6797mm"), _
			Array("NAME:PLPoint", "X:=", "68.8544mm", "Y:=", "-337.5650mm", "Z:=", "94.4732mm"), _
			Array("NAME:PLPoint", "X:=", "59.1456mm", "Y:=", "-337.5650mm", "Z:=", "94.4732mm"), _
			Array("NAME:PLPoint", "X:=", "59.1456mm",   "Y:=", "-328.6281mm",   "Z:=", "90.6797mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "75.2042mm", "Y:=", "-328.6820mm", "Z:=", "90.7026mm"), _
			Array("NAME:PLPoint", "X:=", "84.7958mm", "Y:=", "-328.6820mm", "Z:=", "90.7026mm"), _
			Array("NAME:PLPoint", "X:=", "84.7958mm", "Y:=", "-337.5111mm", "Z:=", "94.4504mm"), _
			Array("NAME:PLPoint", "X:=", "75.2042mm", "Y:=", "-337.5111mm", "Z:=", "94.4504mm"), _
			Array("NAME:PLPoint", "X:=", "75.2042mm",   "Y:=", "-328.6820mm",   "Z:=", "90.7026mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_12", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "91.2703mm", "Y:=", "-328.7428mm", "Z:=", "90.7284mm"), _
			Array("NAME:PLPoint", "X:=", "100.7297mm", "Y:=", "-328.7428mm", "Z:=", "90.7284mm"), _
			Array("NAME:PLPoint", "X:=", "100.7297mm", "Y:=", "-337.4503mm", "Z:=", "94.4245mm"), _
			Array("NAME:PLPoint", "X:=", "91.2703mm", "Y:=", "-337.4503mm", "Z:=", "94.4245mm"), _
			Array("NAME:PLPoint", "X:=", "91.2703mm",   "Y:=", "-328.7428mm",   "Z:=", "90.7284mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "r_15_13", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)
oEditor.DuplicateAroundAxis _
	Array("NAME:Selections", "Selections:=", "p1,r_1_1,r_1_2,r_1_3,r_1_4,r_1_5,r_1_6,r_1_7,r_1_8,r_1_9,r_1_10,r_1_11,r_1_12,r_1_13,r_2_1,r_2_2,r_2_3,r_2_4,r_2_5,r_2_6,r_2_7,r_2_8,r_2_9,r_2_10,r_2_11,r_2_12,r_2_13,r_3_1,r_3_2,r_3_3,r_3_4,r_3_5,r_3_6,r_3_7,r_3_8,r_3_9,r_3_10,r_3_11,r_3_12,r_3_13,r_4_1,r_4_2,r_4_3,r_4_4,r_4_5,r_4_6,r_4_7,r_4_8,r_4_9,r_4_10,r_4_11,r_4_12,r_4_13,r_5_1,r_5_2,r_5_3,r_5_4,r_5_5,r_5_6,r_5_7,r_5_8,r_5_9,r_5_10,r_5_11,r_5_12,r_5_13,r_6_1,r_6_2,r_6_3,r_6_4,r_6_5,r_6_6,r_6_7,r_6_8,r_6_9,r_6_10,r_6_11,r_6_12,r_6_13,r_7_1,r_7_2,r_7_3,r_7_4,r_7_5,r_7_6,r_7_7,r_7_8,r_7_9,r_7_10,r_7_11,r_7_12,r_7_13,r_8_1,r_8_2,r_8_3,r_8_4,r_8_5,r_8_6,r_8_7,r_8_8,r_8_9,r_8_10,r_8_11,r_8_12,r_8_13,r_9_1,r_9_2,r_9_3,r_9_4,r_9_5,r_9_6,r_9_7,r_9_8,r_9_9,r_9_10,r_9_11,r_9_12,r_9_13,r_10_1,r_10_2,r_10_3,r_10_4,r_10_5,r_10_6,r_10_7,r_10_8,r_10_9,r_10_10,r_10_11,r_10_12,r_10_13,r_11_1,r_11_2,r_11_3,r_11_4,r_11_5,r_11_6,r_11_7,r_11_8,r_11_9,r_11_10,r_11_11,r_11_12,r_11_13,r_12_1,r_12_2,r_12_3,r_12_4,r_12_5,r_12_6,r_12_7,r_12_8,r_12_9,r_12_10,r_12_11,r_12_12,r_12_13,r_13_1,r_13_2,r_13_3,r_13_4,r_13_5,r_13_6,r_13_7,r_13_8,r_13_9,r_13_10,r_13_11,r_13_12,r_13_13,r_14_1,r_14_2,r_14_3,r_14_4,r_14_5,r_14_6,r_14_7,r_14_8,r_14_9,r_14_10,r_14_11,r_14_12,r_14_13,r_15_1,r_15_2,r_15_3,r_15_4,r_15_5,r_15_6,r_15_7,r_15_8,r_15_9,r_15_10,r_15_11,r_15_12,r_15_13","NewPartsModelFlag:=", "Model"), _
	Array("NAME:DuplicateAroundAxisParameters", "CreateNewObjects:=", true, "WhichAxis:=", _
"Z", "AngleStr:=",_
 "90.000000deg", "NumClones:=", "2"), _
Array("NAME:Options", "DuplicateAssignments:=",true), Array("CreateGroupsForNewObjects:=", false) 

oEditor.DuplicateAroundAxis _
	Array("NAME:Selections", "Selections:=", "p1,r_1_1,r_1_2,r_1_3,r_1_4,r_1_5,r_1_6,r_1_7,r_1_8,r_1_9,r_1_10,r_1_11,r_1_12,r_1_13,r_2_1,r_2_2,r_2_3,r_2_4,r_2_5,r_2_6,r_2_7,r_2_8,r_2_9,r_2_10,r_2_11,r_2_12,r_2_13,r_3_1,r_3_2,r_3_3,r_3_4,r_3_5,r_3_6,r_3_7,r_3_8,r_3_9,r_3_10,r_3_11,r_3_12,r_3_13,r_4_1,r_4_2,r_4_3,r_4_4,r_4_5,r_4_6,r_4_7,r_4_8,r_4_9,r_4_10,r_4_11,r_4_12,r_4_13,r_5_1,r_5_2,r_5_3,r_5_4,r_5_5,r_5_6,r_5_7,r_5_8,r_5_9,r_5_10,r_5_11,r_5_12,r_5_13,r_6_1,r_6_2,r_6_3,r_6_4,r_6_5,r_6_6,r_6_7,r_6_8,r_6_9,r_6_10,r_6_11,r_6_12,r_6_13,r_7_1,r_7_2,r_7_3,r_7_4,r_7_5,r_7_6,r_7_7,r_7_8,r_7_9,r_7_10,r_7_11,r_7_12,r_7_13,r_8_1,r_8_2,r_8_3,r_8_4,r_8_5,r_8_6,r_8_7,r_8_8,r_8_9,r_8_10,r_8_11,r_8_12,r_8_13,r_9_1,r_9_2,r_9_3,r_9_4,r_9_5,r_9_6,r_9_7,r_9_8,r_9_9,r_9_10,r_9_11,r_9_12,r_9_13,r_10_1,r_10_2,r_10_3,r_10_4,r_10_5,r_10_6,r_10_7,r_10_8,r_10_9,r_10_10,r_10_11,r_10_12,r_10_13,r_11_1,r_11_2,r_11_3,r_11_4,r_11_5,r_11_6,r_11_7,r_11_8,r_11_9,r_11_10,r_11_11,r_11_12,r_11_13,r_12_1,r_12_2,r_12_3,r_12_4,r_12_5,r_12_6,r_12_7,r_12_8,r_12_9,r_12_10,r_12_11,r_12_12,r_12_13,r_13_1,r_13_2,r_13_3,r_13_4,r_13_5,r_13_6,r_13_7,r_13_8,r_13_9,r_13_10,r_13_11,r_13_12,r_13_13,r_14_1,r_14_2,r_14_3,r_14_4,r_14_5,r_14_6,r_14_7,r_14_8,r_14_9,r_14_10,r_14_11,r_14_12,r_14_13,r_15_1,r_15_2,r_15_3,r_15_4,r_15_5,r_15_6,r_15_7,r_15_8,r_15_9,r_15_10,r_15_11,r_15_12,r_15_13","NewPartsModelFlag:=", "Model"), _
	Array("NAME:DuplicateAroundAxisParameters", "CreateNewObjects:=", true, "WhichAxis:=", _
"Z", "AngleStr:=",_
 "180.000000deg", "NumClones:=", "2"), _
Array("NAME:Options", "DuplicateAssignments:=",true), Array("CreateGroupsForNewObjects:=", false) 

oEditor.DuplicateAroundAxis _
	Array("NAME:Selections", "Selections:=", "p1,r_1_1,r_1_2,r_1_3,r_1_4,r_1_5,r_1_6,r_1_7,r_1_8,r_1_9,r_1_10,r_1_11,r_1_12,r_1_13,r_2_1,r_2_2,r_2_3,r_2_4,r_2_5,r_2_6,r_2_7,r_2_8,r_2_9,r_2_10,r_2_11,r_2_12,r_2_13,r_3_1,r_3_2,r_3_3,r_3_4,r_3_5,r_3_6,r_3_7,r_3_8,r_3_9,r_3_10,r_3_11,r_3_12,r_3_13,r_4_1,r_4_2,r_4_3,r_4_4,r_4_5,r_4_6,r_4_7,r_4_8,r_4_9,r_4_10,r_4_11,r_4_12,r_4_13,r_5_1,r_5_2,r_5_3,r_5_4,r_5_5,r_5_6,r_5_7,r_5_8,r_5_9,r_5_10,r_5_11,r_5_12,r_5_13,r_6_1,r_6_2,r_6_3,r_6_4,r_6_5,r_6_6,r_6_7,r_6_8,r_6_9,r_6_10,r_6_11,r_6_12,r_6_13,r_7_1,r_7_2,r_7_3,r_7_4,r_7_5,r_7_6,r_7_7,r_7_8,r_7_9,r_7_10,r_7_11,r_7_12,r_7_13,r_8_1,r_8_2,r_8_3,r_8_4,r_8_5,r_8_6,r_8_7,r_8_8,r_8_9,r_8_10,r_8_11,r_8_12,r_8_13,r_9_1,r_9_2,r_9_3,r_9_4,r_9_5,r_9_6,r_9_7,r_9_8,r_9_9,r_9_10,r_9_11,r_9_12,r_9_13,r_10_1,r_10_2,r_10_3,r_10_4,r_10_5,r_10_6,r_10_7,r_10_8,r_10_9,r_10_10,r_10_11,r_10_12,r_10_13,r_11_1,r_11_2,r_11_3,r_11_4,r_11_5,r_11_6,r_11_7,r_11_8,r_11_9,r_11_10,r_11_11,r_11_12,r_11_13,r_12_1,r_12_2,r_12_3,r_12_4,r_12_5,r_12_6,r_12_7,r_12_8,r_12_9,r_12_10,r_12_11,r_12_12,r_12_13,r_13_1,r_13_2,r_13_3,r_13_4,r_13_5,r_13_6,r_13_7,r_13_8,r_13_9,r_13_10,r_13_11,r_13_12,r_13_13,r_14_1,r_14_2,r_14_3,r_14_4,r_14_5,r_14_6,r_14_7,r_14_8,r_14_9,r_14_10,r_14_11,r_14_12,r_14_13,r_15_1,r_15_2,r_15_3,r_15_4,r_15_5,r_15_6,r_15_7,r_15_8,r_15_9,r_15_10,r_15_11,r_15_12,r_15_13","NewPartsModelFlag:=", "Model"), _
	Array("NAME:DuplicateAroundAxisParameters", "CreateNewObjects:=", true, "WhichAxis:=", _
"Z", "AngleStr:=",_
 "270.000000deg", "NumClones:=", "2"), _
Array("NAME:Options", "DuplicateAssignments:=",true), Array("CreateGroupsForNewObjects:=", false) 

