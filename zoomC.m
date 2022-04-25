function Q = zoomC(Q, angle)

Q = Quaternion.operation.realQ(Q) * cos(angle) + Quaternion.operation.imagQ(Q) * sin(angle);

end