x = -30:30;
y1 = zeros(length(x));
y2 = zeros(length(x));
y3 = zeros(length(x));
y4 = zeros(length(x));

for i = 1:length(x)
    y1(i) = delta_func(x(i));
    y2(i) = Heaviside(x(i));
    y3(i) = cos(2*pi*0.01*i);
    y4(i) = cos(2*pi*0.48*i);
end

figure;
subplot(4,1,1);
stem(y1);
subplot(4,1,2);
stem(y2); 
subplot(4,1,3);
stem(y3); 
subplot(4,1,4);
stem(y4); 


function y = delta_func(x)
    if(x ==  14)
        y = 1;
    else
        y = 0;
    end
end

function y = Heaviside(x)
    if(x >=  14)
        y = 1;
    else
        y = 0;
    end
end
