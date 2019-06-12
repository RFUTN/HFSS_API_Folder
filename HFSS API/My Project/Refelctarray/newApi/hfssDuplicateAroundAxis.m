function hfssDuplicateAroundAxis(fid, ObjectList, angle, axis )


nObjects = length(ObjectList);

fprintf(fid, 'oEditor.DuplicateAroundAxis _\n');
fprintf(fid, '\tArray("NAME:Selections", "Selections:=", "');

% Object Selections.
for iObj = 1:nObjects,
	fprintf(fid, '%s', ObjectList{iObj});
	if (iObj ~= nObjects)
		fprintf(fid, ',');
	end;
end;

fprintf(fid, '","NewPartsModelFlag:=", "Model"), _\n');
fprintf(fid, '\tArray("NAME:DuplicateAroundAxisParameters", "CreateNewObjects:=", true, "WhichAxis:=", _\n');
fprintf(fid, '"%s", "AngleStr:=",_\n',axis);
fprintf(fid,' "%fdeg", "NumClones:=", "2"), _\n',angle);
fprintf(fid,'Array("NAME:Options", "DuplicateAssignments:=",true), Array("CreateGroupsForNewObjects:=", false) \n\n');

