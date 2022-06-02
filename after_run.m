
figure
subplot(2,2,1)
plot(out.tout,out.AoA)
xlabel('Time(sec)')
ylabel('AoA(deg)')
title('Angle of Attack')
ylim([-20 20])
grid

subplot(2,2,2)
plot(out.tout,out.airspeed)
xlabel('Time(sec)')
ylabel('Velocity(ft/sec)')
title('Airspeed')
ylim([550 650])
grid


subplot(2,2,3)
plot(out.tout,out.altitude)
xlabel('Time(sec)')
ylabel('Altitude(ft)')
title('Altitude')
ylim([19900 20100])
grid

subplot(2,2,4)
plot(out.tout,out.power)
xlabel('Time(sec)')
ylabel('Power(%)')
title('Power')
ylim([0 100])
grid


figure
subplot(2,3,4)
plot(out.tout,out.pitch_rate)
xlabel('Time(sec)')
ylabel('Pitch Rate(deg/sec)')
title('Pitch Rate')
ylim([-20 20])
grid

subplot(2,3,5)
plot(out.tout,out.roll_rate)
xlabel('Time(sec)')
ylabel('RollRate(deg/sec)')
title('Roll Rate')
ylim([-20 20])
grid

subplot(2,3,6)
plot(out.tout,out.yaw_rate)
xlabel('Time(sec)')
ylabel('Yaw Rate(deg/sec)')
title('Yaw Rate')
ylim([-20 20])
grid

subplot(2,3,1)
plot(out.tout,out.theta)
xlabel('Time(sec)')
ylabel('Theta(deg)')
title('Pitch Angle')
ylim([-25 25])
grid

subplot(2,3,2)
plot(out.tout,out.phi)
xlabel('Time(sec)')
ylabel('Phi(deg)')
title('Roll Angle')
ylim([-30 30])
grid

subplot(2,3,3)
plot(out.tout,out.psi)
xlabel('Time(sec)')
ylabel('Psi(deg)')
title('Yaw angle')
ylim([-25 25])
grid


figure
subplot(1,2,1)
plot(out.tout,out.el_rate)
xlabel('Time(sec)')
ylabel('Deflection Rate(deg/sec)')
title('Elevator Deflection Rate')
ylim([-40 80])
grid



subplot(1,2,2)
plot(out.tout,out.el_rate1)
xlabel('Time(sec)')
ylabel('Deflection Rate(deg/sec)')
title('Saturated Elevator Deflection Rate')
ylim([-40 80])
grid



t = 0:0.1:50;
figure
plot(t,out.noise)
xlabel('Time(sec)')
ylabel('Magnitude')
title('White Noise')
ylim([-.05,.05])
grid
