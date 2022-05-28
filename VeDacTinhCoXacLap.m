TLi = [0 50 100 150];
wi = [];
Tei = [];

for (TL = TLi)
    out = sim("DacTinhCo.slx",3);
    Tei = [Tei out.Te(end)];
    wi  = [wi out.w(end)];
end

plot(Tei,wi,'-ro','LineWidth',1,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',2);