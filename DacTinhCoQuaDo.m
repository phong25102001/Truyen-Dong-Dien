TLi = [0 70 150]; % cho TL lan luot = 0 70 150 va chay che do qua do
wi = [];
Tei = [];
mask = [];

hold on
for TL = TLi 
    out = sim("DacTinhCo.slx",3);
    plot(out.Te,out.w);
    mask = [mask, "TL = "+num2str(TL)]; % chu thich cho ham legend
    
    Tei = [Tei out.Te(end)]; %tham so cho dac tinh co xac lap
    wi  = [wi out.w(end)];
end

mask = [mask, "Dac Tinh Xac Lap"];
plot(Tei,wi,'--co','LineWidth',0.5,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',2); 
                   
legend(mask);
hold off
