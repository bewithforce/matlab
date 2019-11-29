Fs = 8000; dT = 1/Fs;
t = 0:dT:5;
y = zeros(size(t));
for i = 1:length(t)
    y(i) = 2 * sin(2 * pi * 14 * t(i) + 0);
end
plot(t, y, 'r');