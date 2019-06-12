% ----------------------------------------------------------------------------
% function hfssMoveVariable(fid, ObjList, tVector)
% 
% Description :
% -------------
% Creates the VB Script necessary to move a given set of objects.
%
% Parameters :
% ------------
% fid     - file identifier of the HFSS script file.
% ObjList - a cell array of objects that need to be moved.
% moveX, moveY, moveZ - a translation vector that defines the motion
% (string)

% 
% Note :
% ------
%
% Example :
% ---------
% fid = fopen('myantenna.vbs', 'wt');
% ... create some objects here ...
% moveX='0mm';
% moveY='0.5*$wGap';
% moveZ='0mm';
% hfssMoveVariable(fid, ReflectorRight, moveX, moveY, moveZ);
% ----------------------------------------------------------------------------

% ----------------------------------------------------------------------------
% This file is part of HFSS-MATLAB-API.
%
% HFSS-MATLAB-API is free software; you can redistribute it and/or modify it 
% under the terms of the GNU General Public License as published by the Free 
% Software Foundation; either version 2 of the License, or (at your option) 
% any later version.
%
% HFSS-MATLAB-API is distributed in the hope that it will be useful, but 
% WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
% or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License 
% for more details.
%
% You should have received a copy of the GNU General Public License along with
% Foobar; if not, write to the Free Software Foundation, Inc., 59 Temple 
% Place, Suite 330, Boston, MA  02111-1307  USA
%
% Copyright 2004, Vijay Ramasami (rvc@ku.edu)
% ----------------------------------------------------------------------------
function hfssMoveVariable(fid, ObjectList, moveX, moveY, moveZ)

nObjects = length(ObjectList);

% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.Move _\n');
fprintf(fid, 'Array("NAME:Selections", _\n');

% Object Selections.
fprintf(fid, '"Selections:=", "');
for iObj = 1:nObjects,
	fprintf(fid, '%s', ObjectList{iObj});
	if (iObj ~= nObjects)
		fprintf(fid, ',');
	end;
end;
fprintf(fid, '"), _\n');

% Transalation Vector.
fprintf(fid, 'Array("NAME:TranslateParameters", _\n');
fprintf(fid, '"TranslateVectorX:=", "%s", _\n', moveX);
fprintf(fid, '"TranslateVectorY:=", "%s", _\n', moveY);
fprintf(fid, '"TranslateVectorZ:=", "%s")\n', moveZ);
