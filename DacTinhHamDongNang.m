grid on;
hold on

Tebd = [];
wbd = [];
Teend = [];
wend = [];

TL = 0;
out = sim("hamDongNang.slx",10);
plot(out.Te,out.w);

TeTemp = out.Te(out.tout<1);
wTemp = out.w(out.tout<1);
Tebd = [Tebd TeTemp(end)];
wbd = [wbd wTemp(end)];

Teend = [Teend, out.Te(end)];
wend = [wend, out.w(end)];

TL = 100;
out = sim("hamDongNang.slx",10);
plot(out.Te,out.w);
TeTemp = out.Te(out.tout<1);
wTemp = out.w(out.tout<1);
Tebd = [Tebd TeTemp(end)];
wbd = [wbd wTemp(end)];
Teend = [Teend, out.Te(end)];
wend = [wend, out.w(end)];

plot(Tebd,wbd,"-rs","LineWidth",2);
plot(Teend,wend,"-co","LineWidth",2);
