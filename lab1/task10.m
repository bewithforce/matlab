Fs = 8000; dT = 0.5;
n = 0:1/Fs:4;
x = zeros(size(n));
for i = 1:length(x)
    x(i) = sound(n(i));
end
player = audioplayer(x, Fs);
play(player);
audiowrite('music.wav', f10, Fs);


function y = sound(n)
    switch fix(n / (0.5))
        case 0 
            y = sin(2 * pi * 659 * n);
        case 1 
            y = sin(2 * pi * 622 * n);
        case 2 
            y = sin(2 * pi * 659 * n);
        case 3 
            y = sin(2 * pi * 622 * n);
        case 4 
            y = sin(2 * pi * 494 * n);
        case 5 
            y = sin(2 * pi * 587 * n);
        case 6 
            y = sin(2 * pi * 523 * n);
        case 7 
            y = sin(2 * pi * 440 * n);
        otherwise
            y = sin(2 * pi * 440 * n);
    end
end