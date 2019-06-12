% interpolatePoint takes rows from a matrix (M) and looks there the right
% size of patch based on PSIdeg angle.
% If M doesn't contains PSIdeg value takes two values, 
% a higher value and a lower one, but the closest ones to PSIdeg
% with these points, the equation of the line formed by these two points 
% is calculated and the patch is assigned a size based on said equation
function [Wpd,Lpd] = interpolatePoint(PSIdeg,M,Wp,Lp,LM)
    % size of patch variables
    Lpd = 0;
    Wpd = 0;
    if(PSIdeg~=0)
        % higher value and a lower one
        max =  1000;maxL=0;
        min = -1000;minL=0;
        aux1 = LM+1;
        for k=1:LM
            % searching higher value 
            if(M(k,2)>=PSIdeg && M(k,2)-PSIdeg<max-PSIdeg)
                max = M(k,2);
                maxL= M(k,1);
                aux1 = k;
            end
            % searching lower value
            if(M(k,2)<=PSIdeg && M(k,2)-PSIdeg>min-PSIdeg)
                min = M(k,2);
                minL= M(k,1);
                aux1 = k;
            end
            % M contains PSIdeg value
            if(M(k,2)==PSIdeg)
                max = M(k,2);
                maxL=M(k,1);
                min = M(k,2);
                minL= M(k,1);
                aux1 = k;
            end
        end
        if(minL == 0)
            [q1, q2] = find(M==maxL+0.1);
            minL = M(q1,1);
            min = M(q1,2);
        elseif(maxL == 0)
            [q1, q2] = find(M==minL-0.1);
            maxL = M(q1,1);
            max =  M(q1,2);
        end
        m1 = (max-min)/(maxL-minL);
        minL;
        maxL;
        PSIdeg;
        syms y1
        % equation of the line formed by
        x1 = minL+(y1-min)/m1 ;
        % evaluating PSIdeg in x1 equation
        y1 = PSIdeg;
        % assign size of patch
        Wpd = subs(x1);
        Lpd = Wpd;
    else
        Wpd=Wp;
        Lpd=Lp;
    end
end