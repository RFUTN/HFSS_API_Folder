%% Geommetry
    
% Points F, B, C, D 
%   F -> feed ubication and focal point.
%   B -> Center of Bottom of the panel.
%   C -> Center of panel. 
%   D -> Point where panel ends.

%% Conditions

% 1. Virtual paraboloid equation : 4*f*z = x^2 + y^2, circular
% paraboloid equation.
%   where:
%       f -> focal distance
% 2. Angle between points FBD is 90 degrees.
% 3. Tilt angle of panel its called theta.
% 4. Center of panel must coincide with a unique tangency point between
%    panel and the paraboloid.
% 5. X coordinate of Point B  is W/2, W is panel's width 
%    Y and Z coordinate are 0.

%% Comments
% Due to we are working based on a circular paraboloid and we are designing
% a system with four panels located symmetrically we assume that is
% possible to set most conditions based on a two-dimensional coordinate system
% (X,Z) , after that on (X, Y, Z) system to calculate the rest of conditions or
% equations.

%% Equations

% 1. Equation of panel on (X,Z) plane, its a simple lineal equation
%       
%       General equation z - z0 = m*(x - x0)   (1)
%       
%       we need a point of the straight line equation -> B(W/2,0)
%
%       m is the pendient and -> m = tan(theta)  (2)
%        
%       Replacing (2) in (1) it gets z = tan(theta)*(x - W/2)   (3)
%
%       tan(theta) = W/(2f) (4)
%       
%       Replacing (4) in (3) it gets z = (W/(2f))*(x - W/2)  (5)
%
%       Paraboloid equation if y = 0 is z = x^2/(4f)  (6)
%
%       Matching (5) and (6) it gets 
%       
%       x^2/(4f) = (W/(2f))*(x - W/2)
%
%       x^2 -2*W*x +W^2 = 0 
% 
%       x = W , x coordinate of the tangency point.
% 
%       if we want it to be in the center of panel
% 
%       W = W/2  + (D/2)*cos(theta)
%       D -> panel´s length
%
%       then condition is: D = W/cos(theta)
% 
%       and also           f = W/(2*tan(theta))
% 
% 2. Offset calculation
%
%       P -> point of any patch, P(xp,yp,zp)
% 
%       z' -> z coordinate of intersection between the paraboloid and point 
%             in patch direction.
% 
%       R -> distance from F to P.
% 
%       r -> distance from F to intersection point in patch direction.
%       
%       s -> incidence length  to compensate.
%
%       alpha -> angle between C , F and P.
%
%       R = (xp^2 + yp^2 +(zp-f)^2)^(1/2).
%       Doing a geometrical analysis :
%       z' = f - r*cos(alpha)  (7)
%       Applying parable property :
%       z' = r - f   (8)
%       
%       Matching (7) and (8)
%       r = 2f/(1-cos(alpha)) 
%       cos(alpha) = (f-zp)/R
%       s = R-r (Final equation)
