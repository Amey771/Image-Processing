%% Image enhancement using Piecewise linear Transformation

%% 1.Gray level slicing
I=imread('lab_a.tif');
[r,c]=size(I);
A=140;B=240;
A1=20;A2=250;
I1=A1.*ones(r,c);
I2=I;
I1(I>=A & I<=B)=A2;
I2(I>=A & I<=B)=A2;
figure,
subplot(2,2,[1,2]),
imshow(I);
title('Original Image');
subplot(2,2,3),
imshow(I1,[]);
title('Image Without Preserving Background');
subplot(2,2,4),
imshow(I2);
title('Image With Preserving Background');

%% 2.Bit Plane Slicing
% Part (a): Higher bit plane slicing
I3=imread("lab_b.tif");
figure,
for k=7:-1:4
    I4(:,:,8-k)=bitand(I3,uint8(2^k));
    subplot(2,2,8-k),
    imshow(I4(:,:,8-k),[])
    title(sprintf("%d bit plane image",k))
end;

% Part (b): Lower bit plane slicing
I3=imread("lab_b.tif");
figure,
for k=3:-1:0
    I4(:,:,8-k)=bitand(I3,uint8(2^k));
    subplot(2,2,4-k),
    imshow(I4(:,:,8-k),[])
    title(sprintf("%d bit plane image",k))
end;

% Part (c): Reconstruction
IH=I4(:,:,1)+I4(:,:,2)+I4(:,:,3)+I4(:,:,4);
IL=I4(:,:,5)+I4(:,:,6)+I4(:,:,7)+I4(:,:,8);
figure,
subplot(2,2,[1,2])
imshow(I3)
title("Original image")
subplot(2,2,3)
imshow(IH,[])
title("Higher order bit planes")
subplot(2,2,4)
imshow(IL)
title("Lower order bit planes");

%% 3.Stretching
I=imread("lab_c.tif");
I=im2double(I);
s1=0;
s2=1;
r1=min(min(I));
r2=max(max(I));
O=imadjust(I,[r1,r2],[s1,s2]);
figure,
subplot(1,2,1)
imshow(I)
title("Low contrast image")
subplot(1,2,2)
imshow(O)
title("O/P image after stretching")
