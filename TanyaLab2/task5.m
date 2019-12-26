omega = 0 : 0.01 : pi; 
b = [0 0 0.4];
a = [1 -0.5 0.2];

y = zeros(length(omega), 1);
for i = 1:length(omega)
    y(i) = H_func(exp(omega(i) * 1j), a, b);
end


figure;
subplot(131);
plot(y);
subplot(132);
plot(abs(y));
subplot(133);
plot(angle(y));



function y = H_func(ejw, a, b)
y = 0;
den = 1;
for k = 1:length(b)
    y = y + ejw^(k - 1) * b(k);
end
for k = 2:length(a)
    den = den + ejw^(k - 1) * a(k);
end
y = y / den;
end