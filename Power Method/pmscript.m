T=1;
h=10^-3;
l=1;
N=l/h;
delta=0.5*10^-3;
mu=0.954*10^-3;
v1=ones(1,N-1);
v2=ones(1,N-2);
A=-2*diag(v1) + diag(v2,1) + diag(v2,-1);
C=T/(mu*h*h);
fprintf('normPM returns frequency=  %f\n',sqrt(-C*1/(normPM(inv(A),0.0000000001)))/(2*pi));
for i = 1:N-1
    u=mu+(i*h-(l/2))*delta;
    A(i,:)=u*A(i,:);
end
fprintf('normPM returns frequency=  %f\n',sqrt(-C*1/(normPM(inv(A),0.00000000000001)))/(2*pi));