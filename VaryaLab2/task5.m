omega = 0 : 0.01 : pi; 
b = [1 1 1];
a = [1 0 0];

y = zeros(length(omega), 1);
for i = 1:length(omega)
    y(i) = H_func(exp(omega(i) * 1j), a, b);
end


figure;
subplot(131);
plot(y);
title('Комплексно-частотная'); 

subplot(132);
plot(abs(y));
title('Амплитудно-частотная');

subplot(133);
plot(angle(y));
title('Фазо-частотная'); 


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