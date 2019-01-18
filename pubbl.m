function xdot=pubbl(t,x)
%PUBBL   Funzione che definisce il sistema..
%           xdot=pubbl(t,x)

%Parametri globali del sistema (se non ce ne sono eliminare la riga)
%global alpha beta delta k e
alpha=17.5;
%alpha=12.4; %original paper
beta=0.5;
delta=0.653;
%delta=0.4; %original paper
k=9.5;
e=9.5;

%Inizializza il vettore di uscita
xdot=zeros(3,1);

%Equazioni differenziali che definiscono il sistema
xdot(1)=k-alpha*(1+delta*sin(2*pi*x(3)))*x(1)*(x(2))^2+beta*x(2);		
%xdot(1)=k-alpha*(1+delta*sin(2*pi*t))*x(1)*(x(2))^2+beta*x(2);		
xdot(2)=alpha*(1+delta*sin(2*pi*x(3)))*x(1)*(x(2))^2-(beta+e)*x(2);
%xdot(2)=alpha*(1+delta*sin(2*pi*t))*x(1)*(x(2))^2-(beta+e)*x(2);
xdot(3)=1;		

% IJBC survey: xi = [3.8287 .3582 1.3191]
% Control of complex PPD paper: xi = [1.477 .585]

