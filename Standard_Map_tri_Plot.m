function Standard_Map_tri_Plot(B)
%The function will plot the mapping for tri billiard up to N iterations
%with every mouse click as an initial point
disp('Click the mouse and enjoy! Press ENTER when finished.');
N = 1000;
figure
axis([0 1 -1 1])
xlabel("s")
ylabel("p")
hold on
%color rgb matrix
%color = [0 0 0;0 0 1;0 1 0;0 1 1;1 0 0;1 0 1;1 1 0;1 1 1;0 .5 0;0 .75 .75];
color = [0 .5 0;0 0 1;0 1 0;0 1 1;0 .75 .75];

while 1
    [x,y] = ginput(1);
    %press ENTER when finish drawing
    if isempty([x,y])
        break
    end
    coords=pointGenerate2(N,B,x,y);
    plot(coords(1,:),coords(2,:),'b.','MarkerSize',1,"color",color(randi([1,5],1),:));
    hold on
end
xlabel("$s$",'interpreter','latex','FontSize',18);
ylabel("$p$",'interpreter','latex','FontSize',18);
title('$B=0.4$','interpreter','latex','FontSize',24);