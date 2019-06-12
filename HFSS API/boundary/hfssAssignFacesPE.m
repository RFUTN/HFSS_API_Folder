% ----------------------------------------------------------------------------
% function hfssAssignFacesPE(fid, Name, FaceList)
% 
% Description :
% -------------
% This function creates the VB Script necessary to assign a PMC boundary to 
% the given object(s).
%
% Parameters :
% ------------
% fid     - file identifier of the HFSS script file.
% Name    - name of the PEC boundary. This will appear under "Boundaries" 
%           in HFSS
% FaceList - a cell array of Faces to which the PMC boundary condition will
%           be applied.
% 
% 
% Note :
% ------
%
% Example :
% ---------
% fid = fopen('myantenna.vbs', 'wt');
% ... 
% faces=[133 144];
% hfssAssignFacesPE(fid, 'perfE',faces);
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

function hfssAssignFacesPE (fid, Name, FaceList)

% arguments processor.
if (nargin < 3)
	error('Insufficient # of arguments !');
end;

% # of faces.
N = length(FaceList);

% create the necessary script.
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("BoundarySetup")\n');
fprintf(fid, 'oModule.AssignPerfectE _\n');
fprintf(fid, 'Array("NAME:%s", _\n', Name);

FacesT=[];
for i=1:N-1
    FacesTemp=[num2str(FaceList(i)), ','];
    FacesT=[FacesT FacesTemp];
end;
FacesTemp=[num2str(FaceList(N))];
FacesT=[FacesT FacesTemp];

fprintf(fid, '"Faces:=", '); 
fprintf(fid, 'Array( %s))\n', char(FacesT));
