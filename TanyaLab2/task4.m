x = 0:40;
y = zeros(length(x), 1);

b = [0 0 0.4];
a = [1 -0.5 0.2];

for i=1:length(x)
    x(i) = delta_func(x(i));
    if(i > 2)
        y(i) = 0.4*x(i-2) + 0.2*y(i-2) - 0.5 * y(i-1);
    elseif (i > 1)
        y(i) = -0.5 * y(i-1);
    end
end

y1 = y;
for i=1:length(x)
    if(i > 2)
        y1(i) = 0.4*y(i - 2) + 0.5 * y1(i-1) - 0.2 * y1(i-2);
    elseif (i > 1)
        y1(i) =  0.5 * y1(i-1);
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
    if(x ==  7)
        y = 1;
    else
        y = 0;
    end
end