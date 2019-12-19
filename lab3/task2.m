x = [1 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1];
y = fft(x);

plot(real(y), 'red');
hold on;
plot(imag(y), 'green');
clear y;


function [y] = SinCosAmps(x)
    n = length(x);
    y = zeros(n, 2);
    y(1, 1) = real(x(1))/n;
    y(n / 2 + 1, 1) = imag(x(1))/n;
    for k = 1:n
        y(k, 1) = real(x(k))/n/2;
        y(k, 2) = -imag(x(k))/n/2;
    end
end