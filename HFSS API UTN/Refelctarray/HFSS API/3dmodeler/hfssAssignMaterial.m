% function hfssAssignMaterial(fid, Name, Material, solveinside)
% Description :
% -------------
% Creates VB Script necessary to assign a material to an object
%
% Parameters :
% ------------
% fid               - file identifier of the HFSS script file.
% ObjectName        - name of the object to which the material has to be
% assigned
% material          - name of the material 
% solveinside: 0=false, 1=true
%
% Note :
%
% Example :

function hfssAssignMaterial(fid, Name, Material, solveinside)
% if solveinside is not set
% if the material is copper, we should set solve inside to be false and for
% other materials (in general) is should be true.

if nargin ==3
    if strcmp(Material, 'copper') || strcmp(Material, 'pec')
        solveinside=0;
    else
        solveinside=1;
    end;
end;

fprintf(fid, '\n');
fprintf(fid, 'oEditor.AssignMaterial _\n');
fprintf(fid, '\tArray("NAME:Selections", _\n');
fprintf(fid, '\t\t"Selections:=", "%s"), _\n', Name);  
fprintf(fid, '\tArray("NAME:Attributes", _\n');
fprintf(fid, '\t\t"MaterialName:=", "%s", _\n', Material);

if (~solveinside)
	fprintf(fid, '\t\t"SolveInside:=", false)\n');
else	
	fprintf(fid, '\t\t"SolveInside:=", true)\n');
end;
