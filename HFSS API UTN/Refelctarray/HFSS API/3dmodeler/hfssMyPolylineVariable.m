% -------------------------------------------------------------------------- %
% function hfssMyPolylineVariable(fid, Name, Points, Covered, Units,
% segmentType, Color, Transparency)
% Description:
% ------------
%
% Parameters:
% -----------
% Name - Name Attribute for the PolyLine.
% Points - Points as 3-Tuples of strings in one column,
% Covered - indicates if the polyline has to be covered (0= no, 1= yes)
% ex: Points = ['0mm'; '$variabley'; 'VariableY'];
%          Note: size(Points) must give [nPoints*3, XXX]
%                Points should be created as an array of strings 
%      E.g. Points={p1x; p1y; p1z; p2x; p2y; p2z; p3x; p3y; p3z; p4x; p4y; p4z; p1x; p1y; p1z};

%                
%                to reach the variable N use Points(N)
% Units - can be either:
%         'mm' - millimeter.
%         'in' - inches.
%         'mil' - mils.
%         'meter' - meter (note: don't use 'm').
%          or anything that Ansoft HFSS supports.
%
% Example:
% --------
% -------------------------------------------------------------------------- %

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
% Copyright 2014, Luigi Boccia
% ----------------------------------------------------------------------------
function hfssMyPolylineVariable(fid, Name, Points, Covered, segmentType, Color, ...
                     Transparency)

if (nargin < 4)
	segmentType = [];
	Color = [];
	Transparency = [];
    Covered=1; % true
elseif (nargin < 5)
	Color = [];
	Transparency = [];
    segmentType = [];
elseif (nargin < 6)
	Color = [];
	Transparency = [];
else
    Transparency = [];
end;

if isempty(segmentType)
	segmentType = 'Line';
end;
if isempty(Color)
	Color = [0, 0, 0];
end;
if isempty(Transparency)
	Transparency = 0.8;
end;

nPoints = length(Points(:, 1));

% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.CreatePolyline _\n');
fprintf(fid, '\tArray("NAME:PolylineParameters", ');
if Covered==1
    fprintf(fid, '"IsPolylineCovered:=", true, ');
else
    fprintf(fid, '"IsPolylineCovered:=", false, ');
end;
fprintf(fid, '"IsPolylineClosed:=", true, _\n');

% Enter the Points.
fprintf(fid, '\t\tArray("NAME:PolylinePoints", _\n');
nPoints=nPoints/3;
for iP = 1:nPoints-1,
	fprintf(fid, '\t\t\tArray("NAME:PLPoint", ');
	fprintf(fid, '"X:=", "%s", ', char(Points((iP-1)*3+1)));
	fprintf(fid, '"Y:=", "%s", ', char(Points((iP-1)*3+2)));
	fprintf(fid, '"Z:=", "%s"), _\n', char(Points((iP-1)*3+3)));
end
fprintf(fid, '\t\t\tArray("NAME:PLPoint", ');
fprintf(fid, '"X:=", "%s",   ', char(Points((nPoints-1)*3+1)));
fprintf(fid, '"Y:=", "%s",   ', char(Points((nPoints-1)*3+2)));
fprintf(fid, '"Z:=", "%s")_\n', char(Points((nPoints-1)*3+3)));
fprintf(fid, '\t\t\t), _ \n');

%% Create Segments. Inizio Parte modificata
fprintf(fid, '\t\tArray("NAME:PolylineSegments", _\n'); % preambolo

for i= 1:nPoints-1
    fprintf(fid, '\t\t\tArray("NAME:PLSegment", ');
    fprintf(fid, '"SegmentType:=",  "%s", ', segmentType);
    tx=['"StartIndex:=", ', num2str(i-1), ', '];
    fprintf(fid, tx);
    if i== nPoints-1
        fprintf(fid, '"NoOfPoints:=", 2) _\n');
    else
        fprintf(fid, '"NoOfPoints:=", 2), _\n');
    end;
end;
    fprintf(fid, '\t\t\t) _\n');

% chiusura preambolo
fprintf(fid, '\t\t), _\n');

% Fine modifiche

%% Polyline Attributes.
fprintf(fid, 'Array("NAME:Attributes", _\n');
fprintf(fid, '"Name:=", "%s", _\n', Name);
fprintf(fid, '"Flags:=", "", _\n');
fprintf(fid, '"Color:=", "(%d %d %d)", _\n', Color(1), Color(2), Color(3));
fprintf(fid, '"Transparency:=", %f, _\n', Transparency);
fprintf(fid, '"PartCoordinateSystem:=", "Global", _\n');
fprintf(fid, '"MaterialName:=", "vacuum", _\n');
fprintf(fid, '"SolveInside:=", true)\n');
