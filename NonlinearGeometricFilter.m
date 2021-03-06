function [ new_img ] = NonlinearGeometricFilter( oldimage,mask_h,mask_w)
[H W L]=size(oldimage);
oldimage=double(oldimage);
new_img=zeros(H,W,L);
X=floor(mask_h/2);
Y=floor(mask_w/2);
mult=1;
for i=1:H-mask_h 
 for j=1:W-mask_w
  for m=1:L
   for k=1:mask_h
        for l=1:mask_w
            mult=mult*oldimage(i+k-1,j+l-1,m);
        end
   end
     new_img(i+X,j+Y,m)=mult^(1/(mask_h*mask_w));
     mult=1;
  end
 end 
end
new_img=uint8(new_img);
%imshow(new_img),title('Geometric filter');
end          