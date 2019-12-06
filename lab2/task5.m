x = -20:20;
y = zeros(length(x));
y_abs = zeros(length(x));
y_arg = zeros(length(x));
a = rand(size(x));
b = rand(size(x));

x = -20:20;
y = zeros(length(x));
buff1 = 0;
buff2 = 0;

for i=1:length(x)
    x(i) = H_func(x, a, b);
    y(i) = x(i) + buff1 + buff2;
    buff1 = x(i);
    buff2 = x(i) + y(i);
    y_abs(i) = abs(y(i));
    y_arg(i) = angle(y(i));
end

figure;
subplot(2,1,1);
plot(y_abs);
subplot(2,1,2);
stem(y_arg);


function y = H_func(omega, a, b)
    den = 1;
    y = 0;
    for k = 1:length(b)
        y = y + b(k) * (cos(omega * k) + i*sin(omega*k));
    end
    for k = 2:length(a)
        den = den + a(k) * (cos(omega * k) + i*sin(omega*k));
    end
    y = y/den;
end
