a = imread('lena.jpg');
b = rgb2gray(a);

c = b * 2; 
d = b * 4; 

image = c;
[w,h] = size(image);
min = intmax;
max = intmin; 
for i = 1:w
    for j = 1:h
        if image(i,j) > max
            max = image(i,j);
        end; 
        if image(i,j) < min
            min = image(i,j);
        end
    end
end

normalizada = (255 / ( max - min )) * ( image - min );
imshow(normalizada, 'Teste'); 
figure; 
imshow(image); 


