x = 0:100;
y_re = zeros(length(x));
y_im = zeros(length(x));

for i=1:length(x)
    y_re(i) = real(complex_func(x(i)));
    y_im(i) = imag(complex_func(x(i)));
end

plot(x, y_re, 'g');
hold on;
plot(x, y_im, 'r');
hold off;

function y = complex_func(n)
    y = log10(10 - 14/5).^n * (cos(n) + i*sin(n));
end