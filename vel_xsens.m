function [velocity] = vel_xsens(pos)
t = linspace(0,(length(pos)/60), (length(pos))); 

velocity= zeros(length(t)-1,1) ;
for i = 1:length(t)-1
    velocity(i) = (pos(i+1)-pos(i))/(t(i+1)-t(i)) ;
end
velocity(1)= 0;
velocity(length(t)) = 0;
end
