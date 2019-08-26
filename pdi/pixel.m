a = imread('lena.jpg');
a = rgb2gray(a);

[w,h] = size(a);
x = randi([50, w-50]);
y = randi([50, h-50]);

for i = x-25:x+25
    for j = y-25:y+25
        a(i,j) = 0;  
    end
end

a(x,y) = 255;

imshow(a);