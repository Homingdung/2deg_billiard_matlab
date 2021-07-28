function coords=pointGenerate2(N,B,s,p)
%Generate the point based on tri Billiard for 1000 iterations
x0 = s;
y0 = p;
X(1)=x0;
Y(1)=y0;

for i=1:N
    [x,y]=tri_billiard2(x0,y0,B);
    x0=x;
    y0=y;
    X=[X,x0];
    Y=[Y,y0];
end
coords=[X;Y];
end



