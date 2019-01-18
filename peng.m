function xdot = peng(t,x)

%System parameters
u = .1544;
alpha = 65;
beta = 200;
delta = 47;

xdot=zeros(3,1);

xdot(1) = u*(alpha + x(3)) - x(1) - x(1)*x(2)*x(2);		
xdot(2) = beta*(x(1) + x(1)*x(2)*x(2) - x(2));
xdot(3) = delta*(x(2) - x(3));		