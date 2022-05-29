Kpw = 150;
Kiw = 300;
Kpi = 2;
Kii = 200;
out = sim("dc5_example.slx",4);
figure(1);
subplot(2,1,1);
plot(out.tout, out.Te);
subplot(2,1,2);
plot(out.tout, out.Te);


Kpw = 375;
Kiw = 15;
Kpi = 0.1714;
Kii = 8.3571;
out = sim("dc5_example.slx",4);
figure(2);
subplot(2,1,1);
plot(out.tout, out.Te);
subplot(2,1,2);
plot(out.tout, out.Te);
