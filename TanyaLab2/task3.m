x = 0:40;
y = zeros(length(x));

for i=1:length(x)
    x(i) = delta_func(x(i));
    
    if(i > 2)
        y(i) = 0.4*x(i-2) + 0.2*y(i-2) - 0.5 * y(i-1);
    elseif (i > 1)
        y(i) = -0.5 * y(i-1);
    end
end

stem(y);    


function y = delta_func(x)
    if(x ==  7)
        y = 1;
    else
        y = 0;
    end
end
