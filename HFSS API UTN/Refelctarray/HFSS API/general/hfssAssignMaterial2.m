% ----------------------------------------------------------------------------
% function hfssAssignMaterial2(fid, ObjectName, material)
%
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
% 
% Note :
%
% Example :
% ---------
% fid = fopen('Dipole.vbs', 'wt');
% ...
% hfssAsignMaterial(fid, 'CoaxDielectric', 'Arlon AD350A (tm)' );
% ----------------------------------------------------------------------------

% ----------------------------------------------------------------------------
% This file is part of HFSS-MATLAB-API.
%
% HFSS-MATLAB-API is free software; you can redistribute it and/or modify it 
% under the terms of the GNU General Public License as published by the Free 
% Software Foundation; either version 2 of the License, or (at your option) 
% any later version.

%
% Copyright 2014 Luigi Boccia
% ----------------------------------------------------------------------------
function hfssAssignMaterial2(fid, ObjectName, material)

% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.AssignMaterial _\n');

% Name.
fprintf(fid, 'Array("NAME:Selections", "Selections:=","%s"), _\n', ObjectName);

% Dielectric assignement.
fprintf(fid, 'Array("NAME:Attributes", "MaterialValue:=", "" & Chr(34) & "%s" & Chr(34) & "", "SolveInside:=", true) \n', material);


