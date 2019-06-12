% ----------------------------------------------------------------------------
% function hfssInsertSolutionPhaseConv(fid, Name, fGHz, [maxPhaseS = 1], 
%                             [maxPass = 25])
% 
% Description :
% -------------
% Creates the VBScript necessary to insert a Solution Setup in HFSS. 
%
% Parameters :
% ------------
% fid       - file identifier of the HFSS script file.
% Name      - name of the solution setup.
% fGHz      - solution frequency (in GHz).
% maxError  - maximum phase error to be tolerated (use 1 for reflectarrays)
% maxPasses - max # of passes to be run before the simulation is declared
%             as 'did not converge' (default is 25).
% 
% Note :
% ------
%
% Example :
% ---------
% fid = fopen('myantenna.vbs', 'wt');
% ... 
% hfssInsertSolutionPhaseConv(fid, 'Setup750MHz', 0.75, 1, 100);
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
% Credits, Vijay Ramasami (rvc@ku.edu)
% Luigi Boccia 2014
% ----------------------------------------------------------------------------
function hfssInsertSolutionPhaseConv(fid, Name, fGHz, maxPhaseS, maxPass)


maxDeltaS=0.02;
% arguments processor.
if (nargin < 3)
	error('Insufficient number of arguments !');
elseif (nargin < 4)
	maxPhaseS = [];
	maxPass = [];
elseif (nargin < 5)
	maxPass = [];
end;

% defaults processing.
if isempty(maxPhaseS)
	maxPhaseS = 1;
end;
if isempty(maxPass)
	maxPass = 25;
end;
disp(['Solving at ' num2str(fGHz) 'GHz.....']);
% create the necessary script.
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("AnalysisSetup")\n');
fprintf(fid, 'oModule.InsertSetup "HfssDriven", _\n');
fprintf(fid, 'Array("NAME:%s", _\n', Name);
fprintf(fid, '"Frequency:=", "%fGHz", _\n', fGHz);
fprintf(fid, '"PortsOnly:=", false, _\n');
fprintf(fid, '"maxDeltaS:=", %f, _\n', maxDeltaS);
fprintf(fid, '"UseMatrixConv:=", true, _\n');
fprintf(fid,'"NAME:ConvergenceMatrix", "AllEntries:=",true,_\n');
fprintf(fid,'"MagMinThreshold:=", %f, "Entry:=",_\n',maxDeltaS);
fprintf(fid, 'Array("Port1:=", "SideWallPerfH", "ModeNum1:=", 1,_\n');
fprintf(fid,'"Domain1:=", "", "Port2:=", "SideWallPerfH", "ModeNum2:=", 1,_\n');
fprintf(fid, '"Domain2:=", "", "MagLimit:=", "0.02", "PhaseLimit:=", "%fdeg")), _\n',maxPhaseS);
fprintf(fid, '"MaximumPasses:=", %d, _\n', maxPass);
fprintf(fid, '"MinimumPasses:=", 1, _\n');
fprintf(fid, '"MinimumConvergedPasses:=", 1, _\n');
fprintf(fid, '"PercentRefinement:=", 20, _\n');
fprintf(fid, '"ReducedSolutionBasis:=", false, _\n');
fprintf(fid, '"DoLambdaRefine:=", true, _\n');
fprintf(fid, '"DoMaterialLambda:=", true, _\n');
fprintf(fid, '"Target:=", 0.3333, _\n');
fprintf(fid, '"PortAccuracy:=", 2, _\n');
fprintf(fid, '"SetPortMinMaxTri:=", false)\n');




