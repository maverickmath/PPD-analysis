function [tmin,vmin] = mymin(s,si,dt,to)

% Input
% s: Time series vector [recorded only after the system has reached its attractor]
% si: Initial condition
% dt: Integration [time] interval used in the simulation [scalar] 
% to: Observation [time] interval [scalar]

% Output
% tmax: vector with the time of occurrence of the relative maxima  
% vmax: vector with the amplitudes of the relative maxima

tmin = [];
vmin = [];
e = 0;
aux(1:3) = si; %Initialization

for n=dt:dt:to
    
    e = e + 1;
    aux(3) = aux(2);
    aux(2) = aux(1);
    aux(1) = s(e);
    
    if ((aux(1)>aux(2)) & (aux(2)<aux(3)))
        
        tmin = [tmin; n-dt];
        vmin = [vmin; aux(2)];
        
    end;
    
end;
    
