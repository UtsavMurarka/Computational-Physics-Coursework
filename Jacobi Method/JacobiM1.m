n=3;
ep=0.00000001;
%A=[10,1,3;2,12,4;3,4,19];
A=[76,-25,-50,0,0,0;-25,56,-1,-30,0,0;-50,-1,106,-55,0,0;0,-30,-55,160,-25,-50;0,0,0,-25,56,-1;0,0,0,-50,-1,106];
%B=[1,2,3]';
B=[10,0,0,0,0,0]';
tic
X=JM(A,B,ep)
fprintf('%f\n',toc);
Y=A\B