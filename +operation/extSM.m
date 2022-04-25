function [x] = extSM( q , p )

x = Quaternion.operation.realQ( ( conj(q) * p + conj(p) * q ) ./ 2 );

end