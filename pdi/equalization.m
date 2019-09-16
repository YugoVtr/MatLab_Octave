image = imread('einstein.png');
image_gray = rgb2gray(image);

% Show original images 
imshow(image_gray);
figure; 
histogram(image_gray);

% Equalization 
max_gray = max(image_gray(:));
range_gray = zeros(1, max_gray + 1); 
[w, h] = size(image_gray); 

for i = 1:w
    for j = 1:h
        range_gray( image_gray(i,j) + 1) = range_gray( image_gray(i,j) + 1) + 1;      
    end
end

pk = zeros(length(range_gray),1);
for i = 1:length(range_gray)
    pk(i) = range_gray(i)/(w*h); 
end

cdf = zeros(length(pk),1); 
cdf(1) = pk(1); 
for i = 2:length(pk)
    cdf(i) = cdf(i-1) + pk(i); 
end

new_range_gray = zeros(1, max_gray + 1); 
for i = 1:length(new_range_gray)
    new_range_gray(i) = floor((i-1) * cdf(i)); 
end

new_image = image_gray; 
for i = 1:w
    for j = 1:h
        index = new_image(i,j) + 1; 
        new_image(i,j) = new_range_gray(index);
    end
end

% Show new image 
figure; 
imshow(new_image);
figure; 
histogram(new_image);