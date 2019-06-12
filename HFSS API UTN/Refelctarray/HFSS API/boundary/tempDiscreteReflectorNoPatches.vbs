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

oProject.InsertDesign "HFSS", "DiscreteReflector", "DrivenModal", ""
Set oDesign = oProject.SetActiveDesign("DiscreteReflector")
Set oEditor = oDesign.SetActiveEditor("3D Modeler")
oProject.ChangeProperty Array("NAME:AllTabs", Array("NAME:ProjectVariableTab", Array("NAME:PropServers",  _
"ProjectVariables"), Array("NAME:NewProps", Array("NAME:$ReflectorSize", "PropType:=",  _
"SeparatorProp", "UserDef:=", true, "Value:=", "Reflector geometry"))))
oProject.ChangeProperty Array("NAME:AllTabs", Array("NAME:ProjectVariableTab", Array("NAME:PropServers",  _
"ProjectVariables"), Array("NAME:NewProps", Array("NAME:$$xSize", "PropType:=",  _
"VariableProp", "UserDef:=", true, "Value:=", "5 mm"))))

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "0.0000mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "100.0000mm", "Z:=", "8.3333mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "100.0000mm", "Z:=", "9.0980mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "0.0000mm", "Z:=", "0.7646mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm",   "Y:=", "0.0000mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "Diel_1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.SweepAlongVector _
	Array("NAME:Selections", "Selections:=", "Diel_1", "NewPartsModelFlag:=", "Model"), _
	Array("NAME:VectorSweepParameters", _
		"DraftAngle:=", "0.000000deg", _
		"DraftType:=", "Round", _
		"CheckFaceFaceIntersection:=", false, _
		"SweepVectorX:=", "$xSize", _
		"SweepVectorY:=", "0mm", _
		"SweepVectorX:=", "0mm")

oEditor.AssignMaterial _
	Array("NAME:Selections", _
		"Selections:=", "Diel_1"), _
	Array("NAME:Attributes", _
		"MaterialName:=", "Arlon AD350A (tm)", _
		"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", false, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "$xSize/2", "Y:=", "100mm", "Z:=", "9.098mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize/2",   "Y:=", "0mm",   "Z:=", "0.76464mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "Diel_1_sampleLine", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "100.0000mm", "Z:=", "8.3333mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "200.0000mm", "Z:=", "33.3333mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "200.0000mm", "Z:=", "34.1188mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "100.0000mm", "Z:=", "9.1188mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm",   "Y:=", "100.0000mm",   "Z:=", "8.3333mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "Diel_2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.SweepAlongVector _
	Array("NAME:Selections", "Selections:=", "Diel_2", "NewPartsModelFlag:=", "Model"), _
	Array("NAME:VectorSweepParameters", _
		"DraftAngle:=", "0.000000deg", _
		"DraftType:=", "Round", _
		"CheckFaceFaceIntersection:=", false, _
		"SweepVectorX:=", "$xSize", _
		"SweepVectorY:=", "0mm", _
		"SweepVectorX:=", "0mm")

oEditor.AssignMaterial _
	Array("NAME:Selections", _
		"Selections:=", "Diel_2"), _
	Array("NAME:Attributes", _
		"MaterialName:=", "Arlon AD350A (tm)", _
		"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", false, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "$xSize/2", "Y:=", "200mm", "Z:=", "34.1188mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize/2",   "Y:=", "100mm",   "Z:=", "9.1188mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "Diel_2_sampleLine", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "200.0000mm", "Z:=", "33.3333mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "300.0000mm", "Z:=", "75.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "300.0000mm", "Z:=", "75.8255mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "200.0000mm", "Z:=", "34.1588mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm",   "Y:=", "200.0000mm",   "Z:=", "33.3333mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "Diel_3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.SweepAlongVector _
	Array("NAME:Selections", "Selections:=", "Diel_3", "NewPartsModelFlag:=", "Model"), _
	Array("NAME:VectorSweepParameters", _
		"DraftAngle:=", "0.000000deg", _
		"DraftType:=", "Round", _
		"CheckFaceFaceIntersection:=", false, _
		"SweepVectorX:=", "$xSize", _
		"SweepVectorY:=", "0mm", _
		"SweepVectorX:=", "0mm")

oEditor.AssignMaterial _
	Array("NAME:Selections", _
		"Selections:=", "Diel_3"), _
	Array("NAME:Attributes", _
		"MaterialName:=", "Arlon AD350A (tm)", _
		"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", false, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "$xSize/2", "Y:=", "300mm", "Z:=", "75.8255mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize/2",   "Y:=", "200mm",   "Z:=", "34.1588mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "Diel_3_sampleLine", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "0mm", "Z:=", "0mm"), _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "100mm", "Z:=", "8.3333mm"), _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "200mm", "Z:=", "33.3333mm"), _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "300mm", "Z:=", "75mm"), _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "300mm", "Z:=", "65mm"), _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "307mm", "Z:=", "65mm"), _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "307mm", "Z:=", "85mm"), _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "0mm", "Z:=", "85mm"), _
			Array("NAME:PLPoint", "X:=", "0mm",   "Y:=", "0mm",   "Z:=", "0mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 4, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 5, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 6, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 7, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "SideWall_H1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "$xSize", "Y:=", "0mm", "Z:=", "0mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize", "Y:=", "100mm", "Z:=", "8.3333mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize", "Y:=", "200mm", "Z:=", "33.3333mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize", "Y:=", "300mm", "Z:=", "75mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize", "Y:=", "300mm", "Z:=", "65mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize", "Y:=", "307mm", "Z:=", "65mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize", "Y:=", "307mm", "Z:=", "85mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize", "Y:=", "0mm", "Z:=", "85mm"), _
			Array("NAME:PLPoint", "X:=", "$xSize",   "Y:=", "0mm",   "Z:=", "0mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 4, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 5, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 6, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 7, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "SideWall_H2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "0.0000mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "100.0000mm", "Z:=", "8.3333mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "200.0000mm", "Z:=", "33.3333mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "300.0000mm", "Z:=", "75.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "300.0000mm", "Z:=", "65.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "307.0000mm", "Z:=", "65.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "307.0000mm", "Z:=", "85.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm", "Y:=", "0.0000mm", "Z:=", "85.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.0000mm",   "Y:=", "0.0000mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 4, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 5, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 6, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 7, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "AirBox", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.SweepAlongVector _
	Array("NAME:Selections", "Selections:=", "AirBox", "NewPartsModelFlag:=", "Model"), _
	Array("NAME:VectorSweepParameters", _
		"DraftAngle:=", "0.000000deg", _
		"DraftType:=", "Round", _
		"CheckFaceFaceIntersection:=", false, _
		"SweepVectorX:=", "$xSize", _
		"SweepVectorY:=", "0mm", _
		"SweepVectorX:=", "0mm")
oProject.ChangeProperty Array("NAME:AllTabs", Array("NAME:ProjectVariableTab", Array("NAME:PropServers",  _
"ProjectVariables"), Array("NAME:NewProps", Array("NAME:$Feed", "PropType:=",  _
"SeparatorProp", "UserDef:=", true, "Value:=", "Feed geometry"))))
oProject.ChangeProperty Array("NAME:AllTabs", Array("NAME:ProjectVariableTab", Array("NAME:PropServers",  _
"ProjectVariables"), Array("NAME:NewProps", Array("NAME:$$ppH", "PropType:=",  _
"VariableProp", "UserDef:=", true, "Value:=", "3 mm"))))
oProject.ChangeProperty Array("NAME:AllTabs", Array("NAME:ProjectVariableTab", Array("NAME:PropServers",  _
"ProjectVariables"), Array("NAME:NewProps", Array("NAME:$$ppL", "PropType:=",  _
"VariableProp", "UserDef:=", true, "Value:=", "5 mm"))))
oProject.ChangeProperty Array("NAME:AllTabs", Array("NAME:ProjectVariableTab", Array("NAME:PropServers",  _
"ProjectVariables"), Array("NAME:NewProps", Array("NAME:$$alfaFeed", "PropType:=",  _
"VariableProp", "UserDef:=", true, "Value:=", "37 deg"))))
oProject.ChangeProperty Array("NAME:AllTabs", Array("NAME:ProjectVariableTab", Array("NAME:PropServers",  _
"ProjectVariables"), Array("NAME:NewProps", Array("NAME:$$yFeed", "PropType:=",  _
"VariableProp", "UserDef:=", true, "Value:=", "0 mm"))))
oProject.ChangeProperty Array("NAME:AllTabs", Array("NAME:ProjectVariableTab", Array("NAME:PropServers",  _
"ProjectVariables"), Array("NAME:NewProps", Array("NAME:$$hFeed", "PropType:=",  _
"VariableProp", "UserDef:=", true, "Value:=", "75 mm"))))

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "$yFeed", "Z:=", "$hFeed"), _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "$ppL*cos($alfaFeed)", "Z:=", "$hFeed+$ppL*sin($alfaFeed)"), _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "$yFeed+sqrt( $ppH^2+$ppL^2 )*sin( 90deg-$alfaFeed-atan($ppH/$ppL) )", "Z:=", "$hFeed+sqrt( $ppH^2+$ppL^2 )*cos( 90deg-$alfaFeed-atan($ppH/$ppL) )"), _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "$yFeed-$ppH*sin($alfaFeed)", "Z:=", "$hFeed+$ppH*cos($alfaFeed)"), _
			Array("NAME:PLPoint", "X:=", "0mm",   "Y:=", "$yFeed",   "Z:=", "$hFeed")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "Feed", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.SweepAlongVector _
	Array("NAME:Selections", "Selections:=", "Feed", "NewPartsModelFlag:=", "Model"), _
	Array("NAME:VectorSweepParameters", _
		"DraftAngle:=", "0.000000deg", _
		"DraftType:=", "Round", _
		"CheckFaceFaceIntersection:=", false, _
		"SweepVectorX:=", "$xSize", _
		"SweepVectorY:=", "0mm", _
		"SweepVectorX:=", "0mm")

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", false, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "$yFeed", "Z:=", "$hFeed"), _
			Array("NAME:PLPoint", "X:=", "0mm",   "Y:=", "$yFeed-$ppH*sin($alfaFeed)",   "Z:=", "$hFeed+$ppH*cos($alfaFeed)")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "FeedWall_E1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.SweepAlongVector _
	Array("NAME:Selections", "Selections:=", "FeedWall_E1", "NewPartsModelFlag:=", "Model"), _
	Array("NAME:VectorSweepParameters", _
		"DraftAngle:=", "0.000000deg", _
		"DraftType:=", "Round", _
		"CheckFaceFaceIntersection:=", false, _
		"SweepVectorX:=", "$xSize", _
		"SweepVectorY:=", "0mm", _
		"SweepVectorX:=", "0mm")

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", false, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "0mm", "Y:=", "$ppL*cos($alfaFeed)", "Z:=", "$hFeed+$ppL*sin($alfaFeed)"), _
			Array("NAME:PLPoint", "X:=", "0mm",   "Y:=", "$yFeed+sqrt( $ppH^2+$ppL^2 )*sin( 90deg-$alfaFeed-atan($ppH/$ppL) )",   "Z:=", "$hFeed+sqrt( $ppH^2+$ppL^2 )*cos( 90deg-$alfaFeed-atan($ppH/$ppL) )")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "FeedWall_E2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.SweepAlongVector _
	Array("NAME:Selections", "Selections:=", "FeedWall_E2", "NewPartsModelFlag:=", "Model"), _
	Array("NAME:VectorSweepParameters", _
		"DraftAngle:=", "0.000000deg", _
		"DraftType:=", "Round", _
		"CheckFaceFaceIntersection:=", false, _
		"SweepVectorX:=", "$xSize", _
		"SweepVectorY:=", "0mm", _
		"SweepVectorX:=", "0mm")

Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignPerfectH _
Array("NAME:SideWallPerfH", _
"Objects:=", _
Array("SideWall_H1","SideWall_H2"))
Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignFiniteCond Array("NAME:Feed_E_Wall_1", "Objects:=", Array( _
  "FeedWall_E1"), "UseMaterial:=", true, "Material:=", "copper", "Roughness:=",  _
  "0um", "UseThickness:=", true, "Thickness:=", "", "InfGroundPlane:=",  _
  false)

Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignFiniteCond Array("NAME:Feed_E_Wall_2", "Objects:=", Array( _
  "FeedWall_E2"), "UseMaterial:=", true, "Material:=", "copper", "Roughness:=",  _
  "0um", "UseThickness:=", true, "Thickness:=", "", "InfGroundPlane:=",  _
  false)

Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignRadiation _
Array("NAME:Airbox", _
"Faces:=", Array( 172,173,174,175))

Set oModule = oDesign.GetModule("RadField")
oModule.InsertNearFieldLineSetup Array("NAME:NearFieldLine_1", "UseCustomRadiationSurface:=",false,_
"Line:=", "Diel_1_sampleLine", "NumPts:=", "1000")

Set oModule = oDesign.GetModule("RadField")
oModule.InsertNearFieldLineSetup Array("NAME:NearFieldLine_2", "UseCustomRadiationSurface:=",false,_
"Line:=", "Diel_2_sampleLine", "NumPts:=", "1000")

Set oModule = oDesign.GetModule("RadField")
oModule.InsertNearFieldLineSetup Array("NAME:NearFieldLine_3", "UseCustomRadiationSurface:=",false,_
"Line:=", "Diel_3_sampleLine", "NumPts:=", "1000")
