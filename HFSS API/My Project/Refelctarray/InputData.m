% Input variables for the DiscreteReflector and
% FourPanelReflector files
%% ***********************************************************************
%                          4 Panel Generator
%% ***********************************************************************
% May 2019


%% Operating frequency
freq=20; % GHz

%% Reflector Geometry
W = 230; % mm
Lp = 10; 
Wp = 10;
theta_deg = 23; % Panel tilt.
% Conversion from deg to rad.
theta = theta_deg*pi/180; % rad
D = W/cos(theta); % Diameter in mm 
centerX = W/2; % Center of the panel
dy = 16;dx = 16 ;
% Auxiliar variables.
contY = 0;contX = 0; 
% Focal point of the paraboloid x^2 + y^2 = 4*f*z.
f = W/(2*tan(theta));
% Frequency work.
fr = 8.4e9; % Hz
% Speed of ligth.
c = 3e11; % mm/s
% Wave number in void.
k0 = 2*pi*(fr/c); % 1/m