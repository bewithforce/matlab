x = 0:100;
y = zeros(length(x));

for i = 1:length(x)
     y(i) = sin(x(i));
end

stem(x, y);