x = [1 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1];
y = fft(x);


subplot(2, 1, 1);
plot(real(y), 'red');
hold on;
plot(imag(y), 'green');
clear y;

subplot(2, 1, 2);
y = DFT(x);
plot(real(y), 'red');
hold on;
plot(imag(y), 'green');


function [y] = DFT(x)
    n = length(x);
    y = zeros(n, 1);
    for k = 1:n
        for j = 1:n
            y(k) = y(k) + x(j) * (cos(2*pi*(j - 1)*(k - 1)/n) - 1i*sin(2*pi*(j - 1)*(k - 1)/n));
        end
    end
end