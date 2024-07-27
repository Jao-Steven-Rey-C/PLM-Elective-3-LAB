img_color = imread('orange.png');

Img = img_color;

Img_Red = Img;
Img_Red(:,:,2) = 0; 
Img_Red(:,:,3) = 0; %The combination needed for a red image.
figure(1); %Name is "figure 1".
imshow(Img_Red); %Displays the image
whos Img_Red;

Img_Green = Img;
ImGreen(:,:,2) = 0; 
Img_Green(:,:,1) = 0; %The combination needed for a green image.
figure(2);
imshow(Img_Green);
whos Img_Green;

Img_Blue = Img;
Img_Blue(:,:,1) = 0; 
Img_Blue(:,:,2) = 0; %The combination needed for a blue image.
figure(3);
imshow(Img_Blue);
whos Img_Blue;

Img_Gray = rgb2gray(Img); %Command used to gray out an image.
figure(4);
imshow(Img_Gray);
whos Img_Gray;

imwrite(img_color, 'orange.png', 'jpg', 'Quality', 100)
imwrite(Img_Red, 'red_img.png', 'jpg', 'Quality', 100)
imwrite(Img_Green, 'green_img.png', 'jpg', 'Quality', 100)
imwrite(Img_Blue, 'blue_img.png', 'jpg', 'Quality', 100)
imwrite(Img_Gray, 'gray_img.png', 'jpg', 'Quality', 100)