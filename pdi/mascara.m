clear;
imagem = imread('images/cameraman.jpg');
imagem_pb = rgb2gray(imagem);
n = imagem_pb; 
tamanho = 3;
mask = ones(tamanho);
fator = 1/tamanho^2 ;
[w, h] = size(imagem_pb);

for i = 1:w - tamanho
    for j = 1:h - tamanho
        sub_imagem = imagem_pb(i:i+tamanho-1, j:j+tamanho-1);
        produto = double(mask) .* double(sub_imagem);
        imagem_pb(i,j) = fator * sum(produto, 'all');
    end
end

figure; 
imshow(imagem_pb); 
%figure; 
%imshow(n);
