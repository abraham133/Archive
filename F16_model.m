
%% F16 matrice ~ 20000 ft 600 ft/sec  xcg = 0.3
% x = [Va    ;   h   ;   alpha   ; theta   ;   q    ;  power ;    beta  ;    phi   ;    p     ;   r  ;  psi]
A =[-0.0131    0.0000   21.6813  -31.6936   -0.8206    0.2280    0.0000   -0.0000   -0.0000   -0.0000   0
    -0.0000         0 -591.0404  591.0404         0         0         0    0.0000         0         0   0
    -0.0002    0.0000   -0.7485   -0.0000    0.9482   -0.0000   -0.0000         0    0.0000    0.0000   0
          0         0         0         0    1.0000         0         0         0         0         0   0
     0.0000   -0.0000   -1.4588         0   -0.8897         0   -0.0000         0         0   -0.0029   0
          0         0         0         0         0   -1.0000         0         0         0         0   0
     0.0000   -0.0000    0.0000   -0.0000   -0.0000    0.0000   -0.1967    0.0527    0.0594   -0.9941   0
          0         0         0         0         0         0         0         0    1.0000    0.0595   0
    -0.0000    0.0000    0.0000         0    0.0003         0  -19.6461         0   -2.3178    0.4926   0
    -0.0000    0.0000    0.0000         0    0.0025         0    7.5107         0   -0.0294   -0.3191   0
          0         0         0         0         0         0         0         0         0         1   0];





% u = [throttle ; elevator ; aileron ; rudder]
B = [    0     0.1094        0         0  
         0         0         0         0
         0   -0.0014         0         0
         0         0         0         0
         0   -0.1389         0         0
   34.3908         0         0         0
         0    0.0000    0.0002    0.0005
         0         0         0         0
         0         0   -0.5624    0.0983
         0         0   -0.0246   -0.0491
         0         0         0         0];



%output y = [an ; q ; alpha]
C = [    0.0033   -0.0000   14.3292    0    0.9659         0         0         0         0         0
         0         0         0         0    1.0000         0         0         0         0         0
         0         0   57.2958         0         0         0         0         0         0         0];

%output y = [Va ;   h    ;  alpha   ; theta   ;  q    ;  power ;   beta  ;    phi   ;    p     ;   r    ;   psi]
C = [    1.0000    0         0         0         0         0         0         0         0         0         0
         0    1.0000         0         0         0         0         0         0         0         0         0
         0         0   57.2958         0         0         0         0         0         0         0         0
         0         0         0   57.2958         0         0         0         0         0         0         0
         0         0         0         0   57.2958         0         0         0         0         0         0
         0         0         0         0         0         1         0         0         0         0         0
         0         0         0         0         0         0   57.2958         0         0         0         0
         0         0         0         0         0         0         0   57.2958         0         0         0
         0         0         0         0         0         0         0         0   57.2958         0         0
         0         0         0         0         0         0         0         0         0  57.2958          0 
         0         0         0         0         0         0         0         0         0         0   57.2958];

% bunu kullanacak mıyız???
D = [    0    0.0254         0         0
         0         0         0         0
         0         0         0         0];
     

D = [    0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0];     


     
     
%% F16 matrice ~ 15000 ft 500 ft/sec  xcg = 0.35
% % x = [Va    ;   h   ;   alpha   ; theta   ;   q    ;  power ;    beta  ;    phi   ;    p     ;   r]
% A =[-0.0151    0.0000   10.9540  -31.6936   -1.1127    0.2572    0.0000   -0.0000   -0.0000     0
%          0         0 -492.5337  492.5337         0         0         0    0.0000         0      0
%    -0.0003    0.0000   -0.7244   -0.0000    0.9380   -0.0000   -0.0000         0    0.0000      0
%          0         0         0         0    1.0000         0         0         0         0      0
%    -0.0000    0.0000    1.2193         0   -0.6784         0         0         0         0   -0.0029
%          0         0         0         0         0   -1.0000         0         0         0      0
%     0.0000   -0.0000    0.0000   -0.0000   -0.0000    0.0000   -0.1936    0.0632    0.0743    -0.9923
%          0         0         0         0         0         0         0         0    1.0000  0.0742
%     0.0000   -0.0000    0.0000         0    0.0003         0  -17.2478         0   -2.2605  0.5306
%    -0.0000    0.0000    0.0000         0    0.0025         0    5.5404         0   -0.0370  -0.3002];
% 
% 
% 
% 
% 
% % u = [throttle ; elevator ; aileron ; rudder]
% B = [    0    0.0773   -0.0000   -0.0000
%          0         0         0         0
%          0   -0.0014         0         0
%          0         0         0         0
%          0   -0.1094         0         0
%    33.8925         0         0         0
%          0    0.0000    0.0002    0.0005
%          0         0         0         0
%          0         0   -0.4625    0.0798
%          0         0   -0.0194   -0.0388];
% 
% 
% 
% %output y = [an ; q ; alpha]
% C = [    0.0033   -0.0000   14.3292    0    0.9659         0         0         0         0         0
%          0         0         0         0    1.0000         0         0         0         0         0
%          0         0   57.2958         0         0         0         0         0         0         0];
% 
% %output y = [Va ;   h    ;  alpha   ; theta   ;  q    ;  power ;   beta  ;    phi   ;    p     ;   r]
% C = [    1.0000    0         0         0         0         0         0         0         0         0
%          0    1.0000         0         0         0         0         0         0         0         0
%          0         0         1         0         0         0         0         0         0         0
%          0         0         0         1         0         0         0         0         0         0
%          0         0         0         0         1         0         0         0         0         0
%          0         0         0         0         0         1         0         0         0         0
%          0         0         0         0         0         0         1         0         0         0
%          0         0         0         0         0         0         0         1         0         0
%          0         0         0         0         0         0         0         0         1         0
%          0         0         0         0         0         0         0         0         0         1];
%     
% 
% % bunu kullanacak mıyız???
% D = [    0    0.0208         0         0
%          0         0         0         0
%          0         0         0         0];
%      
% 
% D = [    0         0         0         0
%          0         0         0         0
%          0         0         0         0
%          0         0         0         0
%          0         0         0         0
%          0         0         0         0
%          0         0         0         0
%          0         0         0         0
%          0         0         0         0
%          0         0         0         0];     

     
     

%% transfer functions

%% longitudinal

%for throttle
[a,b] = ss2tf(A(1:6,1:6),B(1:6,1),C(1:6,1:6),D(1:6,1));

GV_t = tf(a(1,:),b);
Gh_t = tf(a(2,:),b);
Galpha_t = tf(a(3,:),b);
Gtheta_t = tf(a(4,:),b);
Gq_t = tf(a(5,:),b);




%for elevator
[a,b] = ss2tf(A(1:6,1:6),B(1:6,2),C(1:6,1:6),D(1:6,2));

GV_e = tf(a(1,:),b);
Gh_e = tf(a(2,:),b);
Galpha_e = tf(a(3,:),b);
Gtheta_e = tf(a(4,:),b);
Gq_e = tf(a(5,:),b);



%% lateral

%for aileron
[a,b] = ss2tf(A(7:10,7:10),B(7:10,3),C(7:10,7:10),D(7:10,1));

Gbeta_a = tf(a(1,:),b);
Gphi_a = tf(a(2,:),b);
Gp_a = tf(a(3,:),b);
Gr_a = tf(a(4,:),b);




%for rudder
[a,b] = ss2tf(A(7:10,7:10),B(7:10,4),C(7:10,7:10),D(7:10,2));

Gbeta_r = tf(a(1,:),b);
Gphi_r = tf(a(2,:),b);
Gp_r = tf(a(3,:),b);
Gr_r = tf(a(4,:),b);



