x = -30:30;
y = zeros(length(x), 1);

b = [1 2];
a = [1 -1];

for i=1:length(x)
    x(i) = delta_func(x(i));
    if(i > 1)
        y(i) = x(i) + 2*x(i-1) + y(i-1);
    else
        y(i) = x(i);
    end
end

y1 = y;
for i=1:length(x)
    if(i > 1)
        y1(i) = 2*y(i) + y(i-1) + y1(i-1);
    else
        y1(i) = y(i);
    end
end

y2 = filter(b,a,y);   



figure;
subplot(3,1,1);
stem(y);
subplot(3,1,2);
stem(y1);
subplot(3,1,3);
stem(y2);


function y = delta_func(x)
    if(x ==  14)
        y = 1;
    else
        y = 0;
    end
end