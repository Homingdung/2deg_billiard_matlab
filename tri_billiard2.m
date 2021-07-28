function [s,p]=tri_billiard2(s0,p0,B)
%Mapping for both B>0 and B<0
if B > 0
    [s,p]=tri_billiard(s0,p0,B);
else
    s0=scheck(s0);
    [s,p]=tri_billiard(s0,-p0,abs(B));
    s = scheck(s);
    p = -p;
end
end




