% -------------------------------------------------------------------------- %
% function hfssCoverLine(fid, ObjName)
% Description:
% ------------
% Covers a polyline to create a face. It can be used after uniting
% different pieces of polylines.
% Parameters:
% -----------
% ObjName - Name of the PolyLine.
function hfssCoverLine(fid, ObjName)
fprintf(fid, 'oEditor.CoverLines Array("NAME:Selections", "Selections:=", "%s", "NewPartsModelFlag:=", _\n', ObjName);
fprintf(fid, '"Model") \n');


