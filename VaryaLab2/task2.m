x = -30:30;
y1 = zeros(length(x));
y2 = zeros(length(x));
y3 = zeros(length(x));
y4 = zeros(length(x));

for i = 1:length(x)
    x1(i) = delta_func(x(i));
    x2(i) = Heaviside(x(i));
    x3(i) = cos(2*pi*0.01*i);
    x4(i) = cos(2*pi*0.48*i);
end

for i = 1:length(x)
    y1(i) = (2 / (2 * x1(i) + 1)) * x1(i);
    y2(i) = (2 / (2 * x2(i) + 1)) * x2(i);
    y3(i) = (2 / (2 * x3(i) + 1)) * x3(i);
    y4(i) = (2 / (2 * x4(i) + 1)) * x4(i);
end

figure;
subplot(221);
plot(x, y1);
subplot(222);
plot(x, y2);
subplot(223);
plot(x, y3);
subplot(224);
plot(x, y4);


function y = delta_func(x)
    if(x ==  14)
        y = 1;
    else
        y = 0;
    end
end

function y = Heaviside(x)
    if(x >=  14)
        y = 1;
    else
        y = 0;
    end
end