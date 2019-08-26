a = imread('lena.jpg');

[w,h] = size(a); 
x = randi(w);
y = randi(h);

a(x - 1, y + 1) = 0; 
a(x, y + 1) = 0;
a(x + 1, y + 1) = 0;

a(x - 1, y) = 0;
a(x + 1, y) = 0;

a(x - 1, y - 1) = 0;
a(x, y - 1) = 0;
a(x + 1, y - 1) = 0;

imshow(a);