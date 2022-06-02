%% lateral motion - modern conçtrol theory LQR


Alat = A(7:11,7:11);
Blat = B(7:11,3:4);
Clat = C(7:11,7:11);
Dlat = D(7:11,3:4);


sys = ss(Alat,Blat,Clat,Dlat);

Q = 10*eye(5);
R = 1;


% diag=[98.5593
%     0.1438
%    84.5308
%   101.6128
%    76.7288
%    75.2735];

  diag=[79.8784
    0.9071
   77.5702
   16.5395
   95.4600
   20.3245];

Q = eye(5);
Q(1,1) = diag(1); 
Q(2,2) = diag(2);
Q(3,3) = diag(3); 
Q(4,4) = diag(4); 
Q(5,5) = diag(5);

R = diag(6);



Klqrlat = lqr(sys,Q,R);



Alqr = Alat-Blat*Klqrlat;

sys = ss(Alqr,Blat,Clat,Dlat);
eig(Alqr)

% yeni elde ettiğim pollerde sınıflandırma yapabiliyor muyum. Mesela
% normalde sadece dutch roll imaginal ama lqrdan sonra bir tane daha
% imajinal pol elde ediyoruz

%% lateral

% %for aileron
% [a,b] = ss2tf(Alqr(1:5,1:5),Blat(1:5,1),Clat(1:5,1:5),Dlat(1:5,1));
% 
% Gbeta = tf(a(1,:),b);
% 
% s = tf('s');
% G = 1 / ((s+0.3401+2.9013i)*(s+0.3401-2.9013i)*(s+0.6326)*(s+2.7762));
% pzmap(G)





%% simulation 

% t = 0:0.01:20;
% u_step = [ ones(1,length(t));
%           zeros(1,length(t))];
% 
% u_zero = zeros(2,length(t));
% x0 = [0 ; 0 ; 0 ; 0 ; 0];

%[y,t,x] = lsim(sys,u,t,x0) 
% x = [ beta  ;    phi   ;    p     ;   r];

% [y t x] = lsim(sys,u_step,t,x0);

% figure
% plot(t,x(:,1))
% grid
% 
% figure
% plot(t,x(:,2))
% grid
% 
% figure
% plot(t,x(:,3))
% grid
% 
% figure
% plot(t,x(:,4))
% grid

