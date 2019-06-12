% Script to generate a 4 panel structure
%% ***********************************************************************
%                          4 Panel Generator
%% ***********************************************************************
% May 2019

% Reset the project.
clear all; close all; clc;

%% HFSS Options
% Add paths to the required m-files.
addpath('newApi/');
hfssIncludePaths('newApi/');
% Open a temp file.
script_temp = 'VB_Files/reflect.vbs';
fid = fopen (script_temp,'wt');
% Create an HFSS project.
hfssNewProject(fid);
hfssInsertDesign(fid,'REFLECT_ARRAY') % Name.

%% Script Options
InputData;
%% Calculate patchs
% Calculate number of patches in x
while(centerX+dx<=W-Wp/2)
    centerX = centerX + dx;
    contX = contX+1;
end
m = 2*contX + 1; % Patches in X.
mH = W-(centerX + Wp/2);
centerY = D/2;
% Calculate number of patches in X.
while(centerY+dy <= D-Lp/2)
    centerY = centerY + dy;
    contY = contY+1;
end
n = 2*contY + 1; % Patches in Y.
mV = D-(centerY + Lp/2);
sw = 1.5;
%% Generate Panels
if(~isnan(n) && ~isnan(m) && ~isnan(mH) && ~isnan(mV)) % Validation.
    VX = -W/2;VY=-W/2;
    % Vertex of each panel.
    points = [[VX;VX+W;VX+W;VX;VX],[VY;VY;VY-D*cos(theta);...
        VY-D*cos(theta);VY],[0;0;D*sin(theta);D*sin(theta);0]];
    % Plot each vertex in Matlab
    plot3([VX;VX+W;VX+W;VX;VX],[VY;VY;VY-D*cos(theta);...
        VY-D*cos(theta);VY],[0;0;D*sin(theta);D*sin(theta);0]);
    % Generate a panel in HFSS.
    hfssPolyline(fid,'p1', points, 'mm', 'true' );
    % Set the thickness of the panel
    hfssThickenSheet(fid,{'p1'},sw,'mm');
    names = {'p1'};
    table = [];
    %% Generate Patchs
    % Read the csv file with phase variations.
    M = csvread('CSV_Files/WyLen10mm_80valores.csv',1);
    LM = length(M);
    stop = 0; % Auxiliar.
    for i = 1 : n     % Row.
        row = [];
        for j = 1 : m % Column.
            % Coordinate Y in the center of the patch.
            cY = (-W/2)-(mV + Lp/2 +(i-1)*dy)*cos(theta);
            % Coordinate Z in the center of the patch.
            cZ = (mV + Lp/2 +(i-1)*dy)*sin(theta);
            % Coordinate X in the center of the patch.
            cX =(-W/2)+(mH + Wp/2 +(j-1)*dx);
            % phaseCalc calculates phase between focus and patch i,j
            PSIdeg = phaseCalc(cX,cY,cZ,f,k0);
            % interpolatePoint Chooses the right size of the patch
            [Wpd Lpd ]=interpolatePoint(PSIdeg,M,Wp,Lp,LM);
            if(Wpd>0)
                row(j) = PSIdeg;
                % Coordinate X of the patch edges.
                xleft = cX - Wpd/2;xright = xleft + Wpd;
                % Coordinate Y of the patch edges.
                yup = cY - (Lpd/2)*cos(theta); ydown = cY + (Lpd/2)*cos(theta);
                % Coordinate Z of the patch edges.
                zup = cZ + (Lpd/2)*sin(theta); zdown = cZ - (Lpd/2)*sin(theta);
                % Column vectors to create the patch X.
                px = [xleft; xright; xright; xleft; xleft ];
                % Column vectors to create the patch Y.
                py = [ydown; ydown; yup; yup; ydown];
                % Column vectors to create the patch Z.
                pz = [zdown; zdown; zup; zup; zdown ];
                hold on
                % Plot the array
                plot3(px,py,pz)
                points = [px,py,pz];
                % Create the patch with polylines.
                hfssPolyline(fid,strcat('r_',num2str(i),'_',num2str(j)), points, 'mm', 'true' );
                names = horzcat(names,strcat('r_',num2str(i),'_',num2str(j)));
            else
                disp('error...')
            end
        end
        if(stop==1)
            break;
        end
        table = vertcat(table,row);
    end
    % Duplicate the panel 3 times and turn around the center
    hfssDuplicateAroundAxis(fid, names, 90, 'Z' );
    hfssDuplicateAroundAxis(fid, names, 180, 'Z' );
    hfssDuplicateAroundAxis(fid, names, 270, 'Z' );
    % Close the temp file
    fclose(fid);
    hfssRemovePaths('newApi/');
    rmpath('newApi/');
else
    msgbox('ERROR: All values must be numeric type!');
end