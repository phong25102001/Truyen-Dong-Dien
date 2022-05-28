hold on;
grid on;
RafEnable = 0;
mask = [];
Kphi = [0.8 1 1.4];
for Vf = Kphi*Rf/Laf
    VeDacTinhCoXacLap;
    mask = [mask, "K*Phi ="+num2str(Laf*Vf/Rf)];
end
legend(mask);
hold off;