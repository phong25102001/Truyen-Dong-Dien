grid on;
hold on

Tebd = [];
wbd = [];
Teend = [];
wend = [];

TL = 25;
out = sim("hamNguoc.slx",20);
plot(out.Te,out.w);

TeTemp = out.Te(out.tout<1);
wTemp = out.w(out.tout<1);
Tebd = [Tebd TeTemp(end)];
wbd = [wbd wTemp(end)];

Teend = [Teend, out.Te(end)];
wend = [wend, out.w(end)];

TL = 75;
out = sim("hamNguoc.slx",20);
plot(out.Te,out.w);
TeTemp = out.Te(out.tout<1);
wTemp = out.w(out.tout<1);
Tebd = [Tebd TeTemp(end)];
wbd = [wbd wTemp(end)];
Teend = [Teend, out.Te(end)];
wend = [wend, out.w(end)];

plot(Tebd,wbd,"-rs","LineWidth",2);
plot(Teend,wend,"-co","LineWidth",2);