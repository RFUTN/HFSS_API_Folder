% phaseCalc function calculates phase angle
% cX,cY,cZ are coordinates in X, Y, Z of center of patch 
% f is paraboloid's focal length (((paraboloid -> 4*f*z = x^2+y^2)))
% k0 is wave number in vaccum

function phase_deg = phaseCalc(cX,cY,cZ,f,k0)
    % Distance from the focus to the center of the patch
    RMN = (cX^2 + cY^2 + (cZ-f)^2)^(1/2);
    % Angle cosine formed by points (0,0,0) coordinates origin
    % the focus (0,0,F) and the patch(CX,CY,CZ)
    cosangle = (f-cZ)/RMN;
    % r->Distance focus - parabola in the direction of the patch
    r = 2*f/(1+cosangle);
    % s->Difference between the paths (virtual paraboloid & patch).
    s = RMN - r;
    
    % -------------I'm not shure about this----------------------%
     %s1->Reflection distance from center of patch to paraboloid %
     s1 = -cZ+(cX^2+cY^2)/(4*f);                                %
    %------------------------------------------------------------%
    
    % phase to compesate in rad due to s and s1
    phase_rad = k0*(s+s1);
    % arbitrary initial phase constant in rad
    phase_0 = 4.27;
    % total phase
    phase_total = phase_0 + phase_rad;
    % transform total phase in rad to degrees (0<phase_deg<360)
    phase_deg = mod((phase_total*180/pi),360);
    
    if phase_deg > 180 %Validation
        % Convert to a negative angle in case of surpass 180°
        phase_deg = phase_deg-360;
    end
    
end