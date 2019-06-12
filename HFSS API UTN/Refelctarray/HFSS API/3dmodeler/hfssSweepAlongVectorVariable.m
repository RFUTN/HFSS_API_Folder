% ----------------------------------------------------------------------------
% function hfssSweepAlongVector(fid, Object2D, VectorX, Vector Y, Vector Z, Units, ...
%                             [DraftAngle = 0 deg], [DraftType = 'Round'])
%
% Luigi Boccia Marzo 2014
% VectorX, Vector Y, Vector Z can be variables
% Description:
% ------------
% Creates the VB Script necessary to sweep a 2D object around the given axis
% to create a 3D object. 
% 
% Parameters:
% -----------
% fid        - file identifier of the HFSS script file.
% Object2D   - name of the 2D Object to be sweeped.
% Vector       - Vector [x y z] along which Object2D is to be sweeped.
% Units        - defalult mm
% DraftAngle - angle (in *deg*) to which the object's profile, or shape is 
%              expanded (or contracted) as it is swept.
% DraftType  - set it to either 'Round' (default), 'Extended' or 'Natural'
%              (consult the HFSS Help for more info).
%							 
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
function hfssSweepAlongVectorVariable (fid, Object, VectorX, VectorY, VectorZ, Units, DraftAngle, ...
                             DraftType)
% arguments processor.
if (nargin < 5)
	error('Not enough arguments !');
elseif (nargin < 6)
	DraftAngle = 0;
	DraftType = 'Round';
    Units='mm';
elseif (nargin < 7)
	DraftType = 'Round';
    DraftAngle=0;
elseif (nargin < 8)
    DraftType=0;
end;

% default arguments.
if isempty(DraftAngle)
	DraftAngle = 0;
end;
if isempty(DraftType)
	DraftType = 'Round';
end;
if isempty(Units)
	Units = 'mm';
end;
fprintf(fid, '\n');

fprintf(fid, 'oEditor.SweepAlongVector _\n');
fprintf(fid, '\tArray("NAME:Selections", "Selections:=", "%s", "NewPartsModelFlag:=", "Model"), _\n', Object);
fprintf(fid, '\tArray("NAME:VectorSweepParameters", _\n');
fprintf(fid, '\t\t"DraftAngle:=", "%fdeg", _\n', DraftAngle);
fprintf(fid, '\t\t"DraftType:=", "%s", _\n', DraftType);
fprintf(fid, '\t\t"CheckFaceFaceIntersection:=", false, _\n');
fprintf(fid, '\t\t"SweepVectorX:=", "%s", _\n', VectorX);
fprintf(fid, '\t\t"SweepVectorY:=", "%s", _\n', VectorY);
fprintf(fid, '\t\t"SweepVectorX:=", "%s")\n', VectorZ);

