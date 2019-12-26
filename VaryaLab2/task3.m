x = -20:20;
y = zeros(length(x));

for i=1:length(x)
    x(i) = delta(x(i));
    if(i > 2)
        y(i) = x(i) + x(i-1) + x(i-2);
    elseif (i > 1)
        y(i) = x(i) + x(i-1);
    else
       y(i) = x(i);
    end
end

stem(y);    


function y = delta(x)
    if(x ==  11)
        y = 1;
    else
        y = 0;
    end
end
