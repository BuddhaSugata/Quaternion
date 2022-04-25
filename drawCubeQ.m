function A = drawCubeQ( Q )

%It needs to make a cubic state of Q check
if (size(Q,1) == size(Q,2))&&(size(Q,2) == size(Q,3))&&(size(Q,4) == 1)
    disp('All right, guys. Its a cube.');
    index = size(Q,1);
else
    disp('Ehhh... Gimme a cube, man!');
    return;
end

%Checking Q is a dot
if index == 1
    disp('Its a dot!');
    return;
end

%Hold the graphics field for all following drawnings
hold on;

%Draw cubicle
for b = 1:(index-1)
    for c = 1:(index-1)
        for d = 1:(index-1)
            [~,i,j,k] = parts(Q(b,c,d));
            X = [i i+1 i+1 i ];
            Y = [j j j+1 j+1 ];
            Z = [k k k k ];
            fill3(X,Y,Z, 0);
        end
    end
end

xlabel('x')
ylabel('y')
zlabel('z')

hold off;

