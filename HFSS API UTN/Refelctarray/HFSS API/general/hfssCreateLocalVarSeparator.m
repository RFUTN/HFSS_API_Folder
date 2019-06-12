% ----------------------------------------------------------------------------
% function hfssCreateLocalVarSeparator(fid, Name,value)
%
% Description :
% -------------
% Creates VB Script necessary to create a local variable separator
%
% Parameters :
% ------------
% fid      - file identifier of the HFSS script file.
% Name     - variable name, string with no spaces
% value     - value, string with spaces
%
% Example :
% ---------
% fid = fopen('Dipole.vbs', 'wt');
% ...
% hfssChangeVarSeparator(fid, 'SeparatorName', 'Description of the sep');
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
%
% Copyright 2014, Luigi Boccia
% ----------------------------------------------------------------------------
function hfssCreateLocalVarSeparator (fid, Name,value)

fprintf(fid, 'oDesign.ChangeProperty Array("NAME:AllTabs", Array("NAME:LocalVariableTab", Array("NAME:PropServers",  _\n');
fprintf(fid, '"LocalVariables"), Array("NAME:NewProps", Array("NAME:--%s", "PropType:=",  _\n',Name);
fprintf(fid, '"SeparatorProp", "UserDef:=", true, "Value:=", "%s"))))\n', value);



