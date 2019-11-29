x = -40:40;
y = zeros(length(x));
for i = 1:length(x)
    x(i) = i;
    y(i) = fading_exponent(x(i));
end   

plot(x,y);



function g = fading_exponent(n)
    g = log10(10 - 14/5).^n * Heaviside(n);
end

function y = Heaviside(x)
    if(x >=  0)
        y = 1;
    else
        y = 0;
    end
end
