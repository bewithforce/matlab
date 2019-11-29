x = 0:100;
y_re = zeros(length(x));
y_im = zeros(length(x));

for i=1:length(x)
    y_re(i) = real(complex_func(x(i)));
    y_im(i) = imag(complex_func(x(i)));
end

plot3(x, y_re, y_im);
grid on;

function y = complex_func(n)
    y = log10(10 - 14/5).^n * (cos(n) + i*sin(n));
end