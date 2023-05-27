function ydot = fpend(y)
    ydot(1)=y(3);
    ydot(2)=y(4);
    ydot(3)=(-3*sin(y(1))-sin(y(1)-2*y(2))-(2*sin(y(1)-y(2))*...
        (y(4)^2+(y(3)^2)*cos(y(1)-y(2)))))/(3-cos(2*y(1)-2*y(2)));
    ydot(4)=(2*sin(y(1)-y(2))*(2*y(3)^2+2*cos(y(1))+...
        (y(4)^2)*cos(y(1)-y(2))))/(3-cos(2*y(1)-2*y(2)));
end


        




