function [s,p] = case1(s0,p0,B)
%The function will calculate the (s,p) for the left wall of the tri
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
n1 = [sqrt(3)/2, -1/2];
t1 = [-1/2,-sqrt(3)/2];


% syms theta
% simplify(R*sin(theta)-sqrt(3)*R*cos(theta));
% sol = solve(simplify(R*sin(theta)-sqrt(3)*R*cos(theta))==sqrt(3)*x_c+sqrt(3)/2-y_c,theta);
%theta=max(double(sol(1)),double(sol(2)));
theta=pi-(asin((sqrt(3)*x_c+sqrt(3)/2-y_c)/(2*R))-pi/3);
v = [-R*omega*sin(theta),R*omega*cos(theta)];


s = 3 - 2*(y_c+R*sin(theta))/sqrt(3);
s = mod(s+integ,3);
p = t1*(v-2*n1*(n1*v'))'/sqrt(2);
%p10=R*omega*sin(theta-pi/3)/sqrt(2);
end








