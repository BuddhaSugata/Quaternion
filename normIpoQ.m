function A = normIpoQ(Q)

%It needs to make a state of Q check
if (size(Q,1) == size(Q,2))&&(size(Q,2) == size(Q,3))&&(size(Q,4) == 1)
    %disp('All right, guys. Its a cube.');
    index = size(Q,1);
else
    %disp('Ehhh... Gimme a fine cube, man!');
    return;
end

[~,I,J,K] = parts(Q);
for a = 1:index
    for b = 1:index
        for c = 1:index
            A(a,b,c) = sqrt(I(a,b,c)^2 + J(a,b,c)^2 + K(a,b,c)^2);
        end
    end
end
