% ----------------------------------------------------------------------------
% function hfssPreamble(fid)
% This function writes a generic preamble in the file fid
function hfssPreamble(fid)
fprintf(fid, 'Dim oHfssApp\n');
fprintf(fid, 'Dim oDesktop\n');
fprintf(fid, 'Dim oProject\n');
fprintf(fid, 'Dim oDesign\n');
fprintf(fid, 'Dim oEditor\n');
fprintf(fid, 'Dim oModule\n');
fprintf(fid, '\n');
fprintf(fid, 'Set oHfssApp  = CreateObject("AnsoftHfss.HfssScriptInterface")\n');
fprintf(fid, 'Set oDesktop = oHfssApp.GetAppDesktop()\n');
fprintf(fid, 'oDesktop.RestoreWindow\n');
fprintf(fid, 'Set oProject = oDesktop.GetActiveProject\n');
fprintf(fid, 'Set oDesign = oProject.GetActiveDesign\n' );
fprintf(fid, 'Set oEditor = oDesign.SetActiveEditor("3D Modeler")\n ');

