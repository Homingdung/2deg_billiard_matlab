% combine the figures
delta=0.05;
x0=linspace(0,3,300);
y0=linspace(-1,1,300);
[X,Y] = meshgrid(x0,y0);
Z1=[];
Z2=[];
Z3=[];
Z4=[];

figure
%for \rho0
for i = 1:300
    for j = 1:300
        s0 = X(i,j);
        p0 = Y(i,j);
        Z1(i,j) = density(s0,p0,2,2,0.5);
    end
end
subplot(2,2,1)
contour(x0,y0,Z1,20);
xlabel("$s$",'interpreter','latex','FontSize',18);
ylabel("$p$",'interpreter','latex','FontSize',18);
title('$$\rho_0$$','interpreter','latex','FontSize', 24);
hold on
line([0.5-delta/2 0.5-delta/2],[-1 1]);
hold on
line([0.5+delta/2 0.5+delta/2],[-1,1]);
hold on
%Tp
for i = 1:300
    for j = 1:300
        s0=X(i,j);
        p0=Y(i,j);
        [X1,Y1] = inverse_mapping_tri(s0,p0,0.5);
        Z2(i,j)=density(X1,Y1,2,2,delta);
        hold on
    end
end
subplot(2,2,2)
contour(x0,y0,Z2,20);
xlabel("$s$",'interpreter','latex','FontSize',18);
ylabel("$p$",'interpreter','latex','FontSize',18);
title('$$T \rho$$','interpreter','latex','FontSize', 24);
hold on
%T2p
for i = 1:300
    for j = 1:300
        s0 = X(i,j);
        p0 = Y(i,j);
        % iterations
        for k = 1:2
            [X1,Y1]=inverse_mapping_tri(s0,p0,0.5);
            s0=X1;
            p0=Y1;
        end
        Z3(i,j) = density(X1,Y1,2,2,delta); 
    end
end
subplot(2,2,3)
contour(x0,y0,Z3,20);
xlabel("$s$",'interpreter','latex','FontSize',18);
ylabel("$p$",'interpreter','latex','FontSize',18);
title('$$T^2 \rho$$','interpreter','latex','FontSize', 24);
hold on
%T3p
for i = 1:300
    for j = 1:300
        s0 = X(i,j);
        p0 = Y(i,j);
        % iterations
        for k = 1:3
            [X1,Y1]=inverse_mapping_tri(s0,p0,0.5);
            s0=X1;
            p0=Y1;
        end
        Z4(i,j) = density(X1,Y1,2,2,delta); 
    end
end
subplot(2,2,4)
contour(x0,y0,Z4,20)
xlabel("$s$",'interpreter','latex','FontSize',18);
ylabel("$p$",'interpreter','latex','FontSize',18);
title('$$T^3 \rho$$','interpreter','latex','FontSize', 24);
hold on
line([0.5-delta/2 0.5-delta/2],[-1 1]);
hold on
line([0.5+delta/2 0.5+delta/2],[-1,1]);


