function hfssDuplicateAroundAxis(fid, ObjectList, Axis, Degrees, nClones)
% Usage hfssDuplicateAroundAxis (fid, {'Dipole1', 'Dipole2'}, 'Z', 90, 3);
% By default attaches the duplicated objects to the original 

% January 2015
% Luigi Boccia

if (nargin < 3)
	nClones=2;
end;

nObjects = length(ObjectList);

% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.DuplicateAroundAxis _\n');
fprintf(fid, 'Array("NAME:Selections",  _\n')
fprintf(fid, '"Selections:=", "');


% Object selection
for iObj = 1:nObjects,
	fprintf(fid, '%s', ObjectList{iObj});
	if (iObj ~= nObjects)
		fprintf(fid, ',');
	end;
end;
fprintf(fid, '", "NewPartsModelFlag:=", "Model"), _\n');
fprintf(fid, 'Array("NAME:DuplicateAroundAxisParameters", _\n');
% No duplicates: CreateNewObjects=false
fprintf(fid, '"CreateNewObjects:=", false, "WhichAxis:=", "%s", _\n', upper(Axis));
fprintf(fid,'"AngleStr:=", "%fdeg", _\n', Degrees); 
fprintf(fid,'"NumClones:=", "%d"), _\n', nClones);
fprintf(fid,'Array("NAME:Options", "DuplicateAssignments:=", false) \n\n');
 
 

