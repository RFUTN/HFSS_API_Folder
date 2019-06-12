function hfssAssignFacesFiniteCond(fid, Name, Faces, material, thickness, igp)

% Name: name of the boundary condition
% Faces: vector of faces e.g. t=[166 153]
% material e.g. 'copper'
% igp: is ground plane (0 for no)
fprintf(fid, 'Set oModule = oDesign.GetModule("BoundarySetup")\n');
fprintf(fid, 'oModule.AssignFiniteCond Array("NAME:%s", "Faces:=", Array( _\n',Name);
[z N]=size(Faces);
FacesT=[];
for i=1:N-1
    FacesTemp=[num2str(Faces(i)), ','];
    FacesT=[FacesT FacesTemp];
end;
FacesTemp=[num2str(Faces(N))];
FacesT=[FacesT FacesTemp];
fprintf(fid, '  %s), "UseMaterial:=", true, "Material:=", "%s", "Roughness:=",  _\n', char(FacesT), material);
if thickness>0
    fprintf(fid, '  "0um", "UseThickness:=", true, "Thickness:=", "%s", "InfGroundPlane:=",  _\n', thickness);
else
    fprintf(fid, '  "0um", "UseThickness:=", false, "InfGroundPlane:=", _\n');
end
if(igp)
    fprintf(fid, '  true)\n\n'); 
else
    fprintf(fid, '  false)\n\n'); 
end
