% Example to Call function 
%   [a,b] = equalization('einstein.png', 1)
function [image, new_image] = equalization(file_name, show)
image = imread(file_name);
image_gray = rgb2gray(image);

if show 
    % Show original images 
    imshow(image_gray);
    figure; 
    histogram(image_gray);    
end

% Equalization 
MAX_GRAY = 256; 
hist = zeros(1, MAX_GRAY); 
[w, h] = size(image_gray); 

% Histogram
for i = 1:w
    for j = 1:h
        hist( image_gray(i,j) + 1) = hist( image_gray(i,j) + 1) + 1;      
    end
end

% New Shades of gray
new_gray_level = zeros(MAX_GRAY, 1);
current = 0;
for i = 1:MAX_GRAY
    current = current + hist(i);
    new_gray_level(i) = floor( (current * MAX_GRAY) / (w*h) ); 
end

% Create new image Equalized
new_image = image_gray; 
for i = 1:w
    for j = 1:h
        index = new_image(i,j) + 1; 
        new_image(i,j) = new_gray_level(index);
    end
end

if show
    % Show new image 
    figure; 
    imshow(new_image);
    figure; 
    histogram(new_image);
end