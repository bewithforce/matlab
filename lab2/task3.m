x = -20:20;
y = zeros(length(x));
buff1 = 0;
buff2 = 0;

for i=1:length(x)
    x(i) = delta_func(x(i));
    y(i) = x(i) + buff1 + buff2;
    buff1 = x(i);
    buff2 = x(i) + y(i);
end

stem(y);    


function y = delta_func(x)
    if(x ==  14)
        y = 1;
    else
        y = 0;
    end
end
