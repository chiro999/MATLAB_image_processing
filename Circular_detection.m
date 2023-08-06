rgb = imread('coloredChips.png');
imshow(rgb)

d = drawline;

pos = d.Position;
diffPos = diff(pos);
diameter = hypot(diffPos(1),diffPos(2));

gray_image = rgb2gray(rgb);
imshow(gray_image)

[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark' ,'Sensitivity' , 0.97);

imshow(rgb)
h = viscircles(centers,radii);

length(centers)

delete(h)
h = viscircles(centers,radii);


[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark' ,'Sensitivity' , 0.92, 'Method', 'twostage');

delete(h)
h = viscircles(centers,radii);

[centersBright,radiiBright] = imfindcircles(rgb,[20 25], 'ObjectPolarity', 'bright', 'Sensitivity', 0.92);
imshow(rgb)
hBright = viscircles(centersBright, radiiBright, 'Color', 'b');

[centersBright,radiiBright] = imfindcircles(rgb,[20 25], 'ObjectPolarity', 'bright', 'Sensitivity', 0.92, 'EdgeThreshold', 0.1);
delete(hBright)
hBright = viscircles(centersBright, radiiBright, 'Color', 'b');
h = viscircles(centers,radii);