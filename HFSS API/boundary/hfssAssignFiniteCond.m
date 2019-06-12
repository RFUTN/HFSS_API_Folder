% function hfssAssignFiniteCond(fid, Name, ObjList, material, UseThickness, thickness, igp)
% Name - name fo the boundary
% ObjList - a cell array of objects to which the PEC boundary condition will
%           be applied. Use e.g. patchNames{end+1}=ObjectName;
% material - string e.g. 'Copper'
% UseThickness - boolean to enable use thickness
% thickness - thickness string e.g. '1mm'
% igp  - (boolean) specify as true to make the PEC represent an infinite
%           ground plane (default is false).

function hfssAssignFiniteCond(fid, Name, ObjectList, material, UseThickness, thickness, igp)



% # of objects.
nObjects = length(ObjectList);

fprintf(fid, 'Set oModule = oDesign.GetModule("BoundarySetup")\n');
fprintf(fid, 'oModule.AssignFiniteCond Array("NAME:%s", "Objects:=", Array( _\n',Name);

for iObj = 1:nObjects,
	fprintf(fid, '"%s"', ObjectList{iObj});
	if (iObj ~= nObjects)
		fprintf(fid, ',');
	end;
end;

fprintf(fid, '), "UseMaterial:=", true, "Material:=", "%s", "Roughness:=", "0um",  _\n', material);
fprintf(fid, ' "UseThickness:=",');
if(UseThickness)
    fprintf(fid, '  true  , "Thickness:=", "%s", ', thickness); 
else
    fprintf(fid, '  false, '); 
end


fprintf(fid, '  "InfGroundPlane:=",  _\n', thickness);
if(igp)
    fprintf(fid, '  true)\n\n'); 
else
    fprintf(fid, '  false)\n\n'); 
end

