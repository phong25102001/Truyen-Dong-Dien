hold on;
grid on;
RafEnable = 0;
mask = [];
for Va = [240, 200, 160]
    VeDacTinhCoXacLap;
    mask = [mask, "Va ="+num2str(Va)];
end
legend(mask);
hold off;