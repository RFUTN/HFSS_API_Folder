% ----------------------------------------------------------------------------
% function hfssBoxVariable(fid, Name, Start, Size)
% 
% Description :
% -------------
% Create the VB Script necessary to create a Box (or Cuboid) in HFSS. This 
% function also provides for optional holes (specified by their Center, 
% Radii and Axes) in the box. This feature is useful to allow things like
% vias, cables etc., to penetrate the box without intersection violations.
%
% Parameters :
% ------------
% fid     - file identifier of the HFSS script file.
% Name    - name of the box (appears in HFSS).
% Start   - starting location of the box (specify as [x, y, z]).
% Size    - size of the box (specify as [sx, sy, sz]).

% Note :
% ------
% If you happen to specify a hole that lies outside the box, it will have
% no effect. The script will run without interruption. 
%
% Example :
% ---------
% fid = fopen('myantenna.vbs', 'wt');
% ... 
% % a Box with 2 holes punched thro' it.
% hfssBox(fid, 'FR4_Base', [-bpHeight/2, -baseLength/2, 0], [bpHeight, ...
%         baseLength, -baseThick], 'in', [cX1, cY1, cZ1], R1, 'Z',...
%         [cX2, cY2, cZ2], R2, 'X');
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
function hfssBoxVariable(fid, Name, Start, Size, Material, varargin)

% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.CreateBox _\n');

% Box Parameters.
fprintf(fid, 'Array("NAME:BoxParameters", _\n');
fprintf(fid, '"XPosition:=", "%s", _\n', Start(1,:));
fprintf(fid, '"YPosition:=", "%s", _\n', Start(2,:));
fprintf(fid, '"ZPosition:=", "%s", _\n', Start(3,:));
fprintf(fid, '"XSize:=", "%s", _\n', Size(1,:));
fprintf(fid, '"YSize:=", "%s", _\n', Size(2,:));
fprintf(fid, '"ZSize:=", "%s"), _\n', Size(3,:));

% Box Attributes.
fprintf(fid, 'Array("NAME:Attributes", _\n');
fprintf(fid, '"Name:=", "%s", _\n', Name);
fprintf(fid, '"Flags:=", "", _\n');
R=int16(rand()*256);
G=int16(rand()*256);
B=int16(rand()*256);
fprintf(fid, '"Color:=", "(%i %i %i)", _\n',R,G,B);
fprintf(fid, '"Transparency:=", 0.9, _\n');
fprintf(fid, '"PartCoordinateSystem:=", "Global", _\n');
fprintf(fid, '"MaterialName:=", "%s", _\n',Material);
fprintf(fid, '"SolveInside:=", true)\n');
	                   