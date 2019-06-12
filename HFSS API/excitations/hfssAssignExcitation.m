% ----------------------------------------------------------------------------
% function hfssAssignExcitation(fid, ObjectName, PortNumber, DeembedText)

% 
% Description :
% -------------
% Creates the VB script necessary to create a waveport with deembedding
%
% Parameters :
% ------------
% fid     - file identifier of the HFSS script file.
% ObjectName    - name of the object in HFSS
% PortNumber - port number 
% DeembedText - Deembed text with variables e.g. $h or "1mm'
% Note :
% ------
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
% Copyright 2017, Luigi Boccia Unical
% ----------------------------------------------------------------------------
function hfssAssignExcitation(fid, ObjectName, PortNumber, DeembedText)

% Port definition
fprintf(fid, '\n');
fprintf(fid, 'oModule.AssignWavePort Array("NAME:Port%d", _\n', PortNumber);
fprintf(fid, ' "Objects:=", Array("%s"), "NumModes:=", 1, _\n', ObjectName);
fprintf(fid, '"RenormalizeAllTerminals:=", true, "UseLineModeAlignment:=", false, _\n');
fprintf(fid, '"DoDeembed:=", true, "DeembedDist:=", "%s", _\n', DeembedText);

% Properties
fprintf(fid,'Array("NAME:Modes", Array("NAME:Mode1", "ModeNum:=", 1, "UseIntLine:=", false, "CharImp:=", "Zpi")), _\n');
fprintf(fid, '"ShowReporterFilter:=", false, "ReporterFilter:=", Array( true), "UseAnalyticAlignment:=", false) _\n');


