% ----------------------------------------------------------------------------
% function hfssRectangleVariable(fid, Name, Axis, Start, Width, Height)
% 
% Description :
% -------------
% Create the VB Script necessary to construct a rectangle using the HFSS
% 3D Modeler. Accepts variables 
%
% Parameters :
% ------------
% fid     - file identifier of the HFSS script file.
% Name    - name of the rectangle object (appears in the HFSS objects tree).
% Axis    - axis that is normal to the rectangle object.
% Start   - starting location of the rectangle (one of its corners). Specify
%           as         sPoint={p1x; p1y; p1z}; .
% Width   - (char) the width of the rectangle. If the axis is 'X' then this 
%           represents the Y-axis size of the rectangle, and so on.
% Height  - (char) the height of the rectangle. If the axis is 'X', then 
%           this represents the Z-axis size of the rectangle, and so on. 
%
% Note :
% ------
% Todo: a feature to add automatic holes in the rectangle object.
%
% Example :
% ---------
% fid = fopen('myantenna.vbs', 'wt');
% ... 
% % in this example, Y-axis size is 10in and Z-axis size is 20in.
% hfssRectangle(fid, 'Rect1', 'X', [0,0,0], 10, 20, 'in');
%
% ----------------------------------------------------------------------------

function hfssRectangleVariable(fid, Name, Axis, Start, Width, Height)

Transparency = 0.5;

% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.CreateRectangle _\n');

% Rectangle Parameters.
fprintf(fid, 'Array("NAME:RectangleParameters", _\n');
fprintf(fid, '"IsCovered:=", true, _\n');
 Start{1}
fprintf(fid, '"XStart:=", "%s", _\n', Start{1});
fprintf(fid, '"YStart:=", "%s", _\n', Start{2});
fprintf(fid, '"ZStart:=", "%s", _\n', Start{3});

fprintf(fid, '"Width:=", "%s", _\n', char(Width));
fprintf(fid, '"Height:=", "%s", _\n', char(Height));

fprintf(fid, '"WhichAxis:=", "%s"), _\n', upper(Axis));

% Rectangle Attributes.
fprintf(fid, 'Array("NAME:Attributes", _\n');
fprintf(fid, '"Name:=", "%s", _\n', Name);
fprintf(fid, '"Flags:=", "", _\n');
fprintf(fid, '"Color:=", "(132 132 193)", _\n');
fprintf(fid, '"Transparency:=", %d, _\n', Transparency);
fprintf(fid, '"PartCoordinateSystem:=", "Global", _\n');
fprintf(fid, '"MaterialName:=", "vacuum", _\n');
fprintf(fid, '"SolveInside:=", true)\n');
