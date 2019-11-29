x = zeros(40);
y = zeros(40);
for i = 1:length(x)
    x(i) = i;
    y(i) = Heaviside(x(i));
end   

stem(x, y);

function y = Heaviside(x)
    if(x >=  14)
        y = 1;
    else
        y = 0;
    end
end





















