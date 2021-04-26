%% Image Negative

I=imread('image1.tif');
Lmax=max((max(I)));
Ineg=Lmax-I;
figure,
subplot(2,1,1)
imshow(I)
title('Original Image')
subplot(2,1,2)
imshow(Ineg)
title('Negative Image');

%% Log Transformation

I=imread('image2.tif');
I=im2double(I);
c1=3;
c2=10;
Ilog1=c1*log(1+I);
Ilog2=c2*log(1+I);
figure,
subplot(3,1,1)
imshow(I)
title('Original Image')
subplot(3,1,2)
imshow(Ilog1)
title('Log Transformation Image with c=3')
subplot(3,1,3)
imshow(Ilog2)
title('Log Transformation Image with c=10');

%% Power law transformation
% For Gamma < 1
I=imread('image4.tif');
I=im2double(I);
g1=0.6;
g2=0.4;
g3=0.2;
c=1;
G1=c*(I.^g1);
G2=c*(I.^g2);
G3=c*(I.^g3);
figure,
subplot(2,2,1)
imshow(I)
title('Original Image')
subplot(2,2,2)
imshow(I)
title('Power Law Trans with gamma=0.6')
subplot(2,2,3)
imshow(G2)
title('Power Law Trans with gamma=0.4')
subplot(2,2,4)
imshow(G3)
title('Power Law Trans with gamma=0.2')

%%
% For Gamma > 1
I=imread('image3.tif');
I=im2double(I);
g1=2.0;
g2=2.5;
g3=2.8;
c=1;
G1=c*(I.^g1);
G2=c*(I.^g2);
G3=c*(I.^g3);
figure,
subplot(2,2,1)
imshow(I)
title('Original Image')
subplot(2,2,2)
imshow(I)
title('Power Law Trans with gamma=2.0')
subplot(2,2,3)
imshow(G2)
title('Power Law Trans with gamma=2.5')
subplot(2,2,4)
imshow(G3)
title('Power Law Trans with gamma=2.8')
