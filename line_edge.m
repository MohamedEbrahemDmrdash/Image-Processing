function [ new_img ] = line_edge(oldimage,type)
if(type == 'V')
mask=[-1 0 1;-2 0 2; -1 0 1];
end;
if(type == 'H')
mask=[-1 -2 -1;0 0 0; 1 2 1];
end;
if(type == 'DL')
mask=[0 -1 -2;1 0 -1; 2 1 0];
end;
if(type == 'DR')
mask=[-2 -1 0;-1 0 1; 0 1 2];
end;
oldimage=double(oldimage);
new_img=PaddingFilter(oldimage,mask);

new_img=abs(new_img);
new_img=clipping(new_img );

new_img=uint8(new_img);
%imshow(new_img),title('edge detection line');

end
           
          