x = -20:20;
y = zeros(length(x));
buff1 = 0;
buff2 = 0;

a = rand(size(x));
b = rand(size(x));

for i=1:length(x)
    x(i) = delta_func(x(i));
    y(i) = x(i) + buff1 + buff2;
    buff1 = x(i);
    buff2 = x(i) + y(i);
end

y2 = filter(b,a,y);    

for i=1:length(x)
    for j=1:i
        y(i) = y(i) + b(j) * x(i - j + 1);
    end
    for j=1:(i - 1)
        y(i) = y(i) - a(j) * y(i - j + 1);
    end
end

figure;
subplot(2,1,1);
stem(y);
subplot(2,1,2);
stem(y2);


function y = delta_func(x)
    if(x ==  14)
        y = 1;
    else
        y = 0;
    end
end
