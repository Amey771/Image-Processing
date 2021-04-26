%% Image Enhancement Using Histogram Processing

% Calculating histogram of an image.
I=imread("lab_1.tif");
H=imhist(I);
figure,
subplot(1,2,1)
imshow(I)
title("Low contrast image")
subplot(1,2,2)
stem(H)
xlim([0 255]);
title("Histogram of image")
colorbar('southoutside')
colormap gray

%%
% Calculating histogram and their equalised image plot its transfer
% function.
I=imread("lab_1.tif");
[O,T]=histeq(I);
H=imhist(I);
H1=imhist(O);
figure,
subplot(2,2,1)
imshow(I)
title("Low contrast image")
subplot(2,2,2)
plot(H)
xlim([0 255]);
title("Equi hist of low contrast image")
subplot(2,2,3)
imshow(O)
title("Equalised image")
subplot(2,2,4)
plot(H)
xlim([0 255]);
title("Equalised histogram of Equalised image")
figure,
subplot(1,1,1)
plot(T)
xlim([0 255]);
title("Transfer function")
