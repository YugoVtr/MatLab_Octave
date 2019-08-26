a = imread('lena.jpg');
b = rgb2gray(a);
imshow(a); 
figure; 
imshow(b);

[w,h] = size(b); 
for i = 1:w
    for j = 1:h
        if i < 101 || j < 101 || i > w - 100 || j > h - 100
            b(i,j) = 0; 
        end
    end
end

imshow(b);