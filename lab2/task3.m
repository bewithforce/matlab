x = -20:20;
y = zeros(length(x));

for i=1:length(x)
    x(i) = delta_func(x(i));
    if(i > 1)
        y(i) = x(i) + 2*x(i-1) + y(i-1);
    else
        y(i) = x(i);
    end
end

stem(y);    


function y = delta_func(x)
    if(x ==  14)
        y = 1;
    else
        y = 0;
    end
end
