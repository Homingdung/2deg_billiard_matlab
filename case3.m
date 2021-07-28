function [s,p] = case3(s0,p0,B)
%The function will calculate the (s,p) for the bottom wall of the tri
[integ,rest] = divmod(s0);
s0=rest;
v_0 = [sqrt(2)*p0,sqrt(2)*sqrt(1-p0^2)];
omega = -2*sqrt(2)*B;
v_0_norm = norm(v_0);
R = v_0_norm/abs(omega);
x_0 = s0-1/2;
y_0 = 0;
x_c = x_0-v_0(2)/omega;
y_c = y_0+v_0(1)/omega;
phi=atan2(y_0-y_c,x_0-x_c);
s = s0+2*R*cos(pi-phi);
s=mode(s+integ,3);
p=p0;
end







