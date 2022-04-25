function [A] = cubeQ(x)

index = floorDiv(x,1);

if index < 0
    index = abs(index);
else
    if index == 0
        index = 1;
    end
end

for b = 1:index
    for c = 1:index
        for d = 1:index
        A(b,c,d) = quaternion(1,b-1,c-1,d-1);
        end
    end
end