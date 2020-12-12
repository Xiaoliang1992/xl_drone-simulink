clear
clc
K = [-0.25 0.25 0.25 -0.25;
     0.25 0.25 -0.25 -0.25;
     0.25 -0.25 0.25 -0.25;
     0.25 0.25 0.25 0.25]
% M = K * T
% T = inv(K)*M
R = inv(K)
R * [0;0;0;100]

% Mx,My,Mz [-100, 100]
% Ti [0, 100]

MASS = 0.85; %kg
g = 9.81;
INERTIA = diag([1.0 2.0 2.5]) * 1e-4;
Thrust_to_grav = 4.0;
Thrust_max = MASS * g * Thrust_to_grav;
MAX_ANG_ACC = 10 * diag([50.0 50.0 20.0]); % rad/s^2
fc_m = 5.0;
MAX_ESC_SPD = 6000;
MAX_TILT_ANGLE = 35.0;
MAX_XY_ANG_VEL = 8;
MAX_Z_ANG_VEL = 3.5;
Df = 0.011 * diag([2 1.9 0.5]);

% mixer
W = diag([1.0 1.0 1.0 0.5]);
ub = [100.0; 100.0; 100.0; 100.0];
lb = [0; 0; 0; 0];


wind_spd = [0;0;0];

