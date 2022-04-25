function Desc = drawC( Q )

%It needs to make a cubic state of Q check
if (size(Q,1) == size(Q,2))&&(size(Q,2) == size(Q,3))&&(size(Q,4) == 1)&&(size(Q,1) == 2)
    %disp('All right, guys. Its a cube.');
    index = size(Q,1);
else
    %disp('Ehhh... Gimme a fine cube, man!');
    return;
end

%Checking Q is a dot
if index == 1
    disp('Its a dot!');
    return;
end

%Hold the graphics field for all following drawnings
hold on;

box on;

%Eight cube's vertexes
[~,i0,j0,k0] = parts(Q(1,1,1));
[~,i1,j1,k1] = parts(Q(2,1,1));
[~,i2,j2,k2] = parts(Q(2,2,1));
[~,i3,j3,k3] = parts(Q(1,2,1));
[~,i4,j4,k4] = parts(Q(1,1,2));
[~,i5,j5,k5] = parts(Q(2,1,2));
[~,i6,j6,k6] = parts(Q(2,2,2));
[~,i7,j7,k7] = parts(Q(1,2,2));

%Six sites
X0 = [ i0 i1 i2 i3 ];
Y0 = [ j0 j1 j2 j3 ];
Z0 = [ k0 k1 k2 k3 ];

X1 = [ i0 i1 i5 i4 ];
Y1 = [ j0 j1 j5 j4 ];
Z1 = [ k0 k1 k5 k4 ];

X2 = [ i0 i3 i7 i4 ];
Y2 = [ j0 j3 j7 j4 ];
Z2 = [ k0 k3 k7 k4 ];

X3 = [ i4 i5 i6 i7 ];
Y3 = [ j4 j5 j6 j7 ];
Z3 = [ k4 k5 k6 k7 ];

X4 = [ i1 i2 i6 i5 ];
Y4 = [ j1 j2 j6 j5 ];
Z4 = [ k1 k2 k6 k5 ];

X5 = [ i2 i3 i7 i6 ];
Y5 = [ j2 j3 j7 j6 ];
Z5 = [ k2 k3 k7 k6 ];

%Draw cubes sides
d1 = fill3(X0, Y0, Z0, [0.5 0.5 1]);
d2 = fill3(X1, Y1, Z1, [0.4 0.4 1]);
d3 = fill3(X2, Y2, Z2, [0.3 0.3 1]);
d4 = fill3(X3, Y3, Z3, [0.9 0.9 1]);
d5 = fill3(X4, Y4, Z4, [0.1 0.1 1]);
d6 = fill3(X5, Y5, Z5, [0.7 0.7 1]);

Desc = [d1 d2 d3 d4 d5 d6];

daspect([2 2 2]);
axis([-2 3 -2 3 -2 3 -1 1]);

xlabel('x')
ylabel('y')
zlabel('z')

hold off

