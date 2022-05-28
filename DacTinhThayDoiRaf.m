hold on;
grid on;
RafEnable = 1;
mask = [];
for Raf = [0.5, 0.78, 1]
    VeDacTinhCoXacLap;
    mask = [mask, "Raf ="+num2str(Raf)];
end
legend(mask);
hold off;