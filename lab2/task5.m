x = -20:20;
y = zeros(length(x));
y_abs = zeros(length(x));
y_arg = zeros(length(x));
a = rand(size(x));
b = rand(size(x));

for i=1:length(x)
    x(i) = i * pi/length(x);
    y(i) = H_func(x, a, b);
    y_abs(i) = abs(y(i));
    y_arg(i) = angle(y(i));
end  

figure;
subplot(2,1,1);
stem(y_abs);
subplot(2,1,2);
stem(y_arg);


function y = H_func(omega, a, b)
    den = 1;
    y = 0;
    for i = 1:length(b)
        y = y + b(i) * (cos(omega * i) + i*sin(omega*i));
    end
    for i = 2:length(a)
        den = den + a(i) * (cos(omega * i) + i*sin(omega*i));
    end
    y = y/den;
end
