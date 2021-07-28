function [s,p]=tri_billiard(s0,p0,B)
%Mapping only for B>0

s01=s0;
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
n2 = [-sqrt(3)/2,-1/2];
right=[1/2,0];
top=[0,sqrt(3)/2];
centre = [x_c,y_c];
d1 = abs((centre-top)*n1');
d2 = abs((centre-right)*n2');


if d1 < R
    [s1,p]=case1(s0,p0,B);
    if s1>2 && s1<3 
        [s,p]=case1(s01,p0,B);    
    else
        if d2 < R
            [s2,p]=case2(s0,p0,B);
            if s2>1 && s2<2
               [s,p]=case2(s01,p0,B);           
            
            else
                [s,p]=case3(s01,p0,B);
            end
        else
            [s,p]=case3(s01,p0,B);
            
        end
    end
else
    if d2 < R
            [s2,p]=case2(s0,p0,B);
            if s2>1 && s2<2
               [s,p]=case2(s01,p0,B);           
            
            else
                [s,p]=case3(s01,p0,B);
            end
        else
            [s,p]=case3(s01,p0,B);
     end 
end
end


