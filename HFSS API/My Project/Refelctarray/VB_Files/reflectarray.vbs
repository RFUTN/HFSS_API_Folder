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
			Array("NAME:PLPoint", "X:=", "-105.0000mm", "Y:=", "-105.0000mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "105.0000mm", "Y:=", "-105.0000mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "105.0000mm", "Y:=", "-315.0000mm", "Z:=", "121.2436mm"), _
			Array("NAME:PLPoint", "X:=", "-105.0000mm", "Y:=", "-315.0000mm", "Z:=", "121.2436mm"), _
			Array("NAME:PLPoint", "X:=", "-105.0000mm",   "Y:=", "-105.0000mm",   "Z:=", "0.0000mm")_
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
