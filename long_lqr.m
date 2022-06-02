%% longitudinal motion - modern control theory LQR


Along = A(1:6,1:6);
Blong = B(1:6,1:2);
Clong = C(1:6,1:6);
Dlong = D(1:6,1:2);


sys = ss(Along,Blong,Clong,Dlong);


Q = eye(6);
R = 15;



diag=[5.8050
    2.3085
   16.3346
   18.7959
   48.1467
   16.0330
   29.8098];

 
%  diag=[9.9691
%     0.2660
%    23.8587
%    12.3699
%     7.4398
%    17.4579
%    23.0800];


Q = eye(5);
Q(1,1) = diag(1); 
Q(2,2) = diag(2);
Q(3,3) = diag(3); 
Q(4,4) = diag(4); 
Q(5,5) = diag(5);
Q(6,6) = diag(6);

R = diag(7);


Klqrlong = lqr(sys,Q,R);

Alqr = Along-Blong*Klqrlong;

sys = ss(Alqr,Blong,Clong,Dlong);

eig(Alqr)


%% transfer functions

%% longitudinal

% %for throttle
% [a,b] = ss2tf(Alqr,Blong(:,1),Clong,Dlong(:,1));
% 
% GV_t = tf(a(2,:),b);
% % zeroları göztermeye gerek yok çok büyük çıkıyor. polleri bunla aynı olan
% % tf salla pz map yap

% s = tf('s');
% G = 1 / ((s+1.0293 + 2.4237i)*(s+1.0293 - 2.4237i)*(s+2.2431 + 0.9631i)*(s+2.2431 - 0.9631i));
% pzmap(G)



%% simulation

% t = 0:0.01:10;
% u_step = [ones(1,length(t));
%           zeros(1,length(t))];
% u_zero = zeros(2,length(t));
% x0 = [0 ; 10 ; 0 ; 0 ; 0 ; 0];
% 
% [y,t,x] = lsim(sys,u_zero,t,x0);
% x = [Va    ;   h   ;   alpha   ; theta   ;   q    ;  power];

% [y ,t, x] = lsim(sys,u_zero,t,x0);
% 
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

% figure
% plot(t,x(:,4))
% grid
% 
% figure
% plot(t,x(:,5))
% grid
% 
% figure
% plot(t,x(:,6))
% grid