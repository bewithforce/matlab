
x = zeros(220);
y = zeros(220);
for i = 1:length(x)
    x(i) = i - 110;
    y(i) = sin(2*pi*x(i)/(8*14));
end

stem(x, y);
