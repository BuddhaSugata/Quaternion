function [A] = createUnitCube()

index = 2;

for b = 1:index
    for c = 1:index
        for d = 1:index
        A(b,c,d) = quaternion(0,b-1,c-1,d-1);
        end
    end
end