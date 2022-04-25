function P = imagQ(Q)

[ ~ , B , C , D ] = parts(Q);
A = zeros(size(Q));
P = quaternion( A, B , C , D );

end