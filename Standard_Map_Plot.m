function Standard_Map_Plot(K)
% The function will perform the standard map drawing


disp('Click the mouse and enjoy! Press ENTER when finished.');
N = 1000;
figure
axis([0 2*pi -1 1])
xlabel("theta")
ylabel("p")
a = "Standard Map K=";
b = num2str(K);
str = strcat(a,b);
title(str);
hold on
%color rgb matrix
color = [0 0 0;0 0 1;0 1 0;0 1 1;1 0 0;1 0 1;1 1 0;1 1 1;0 .5 0;0 .75 .75];

while 1
    [x,y] = ginput(1);
    %press ENTER when finish drawing
    if isempty([x,y])
        break
    end
    coords=pointGenerate(K,N,x,y);
    plot(coords(1,:),coords(2,:),'b.','MarkerSize',5,"color",color(randi([1,10],1),:));
    hold on
end
end








