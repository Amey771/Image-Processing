
I=imread('Image.tif');
[r,c]=size(I);
s=(r-1)/2;
t=(c-1)/2;
D=150;
I1=zeros(r,c);
I2=I1;
I3=I1;
for x=1:r
    for y=1:c
        de=sqrt((x-s)^2+(y-t)^2);
        d4=(abs(x-s)+abs(y-t));
        d8=max(abs(x-s),abs(y-t));
        
        if de<D
            I1(x,y)=I(x,y);
        end
        if d4<D
            I2(x,y)=I(x,y);
        end
        if d8<D
            I3(x,y)=I(x,y);
        end
    end
end
subplot(2,2,1),
imshow(I,[])
title('Original Image');
subplot(2,2,2),
imshow(I1,[])
title('Locus of Euclidean Distance');
subplot(2,2,3),
imshow(I2,[])
title('Locus of City Block Distance');
subplot(2,2,4),
imshow(I3,[])
title('Locus of Chess Board Distance');
