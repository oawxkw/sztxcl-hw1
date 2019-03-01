%% hw1
%  

%% hw1-1
%
clc; clear; close all;
fileID = fopen(".\pic\7.bmp",'r');
HEX = dec2hex(fread(fileID,'uint8'));
fclose(fileID);

% Bitmap file header
fprintf("Bitmap file header: %s\n",reshape(HEX(1:14,:)',1,[])); ip = 0; len = 2;
fprintf("000%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 4;
fprintf("000%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 2;
fprintf("000%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 2;
fprintf("000%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 4;
fprintf("000%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[]));

% DIB header (bitmap information header)
fprintf("DIB header: %s\n",reshape(HEX(15:50,:)',1,[])); ip = ip + len; len = 4;
fprintf("000%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 4;
fprintf("00%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 4;
fprintf("00%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 2;
fprintf("00%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 2;
fprintf("00%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 4;
fprintf("00%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 4;
fprintf("00%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 4;
fprintf("00%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 4;
fprintf("00%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 4;
fprintf("00%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 4;
fprintf("00%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[]));

% Color table
fprintf("Color table: %s\n",reshape(HEX(51:1078,:)',1,[]));

% Pixel storage
fprintf("Pixel storage: %s\n",reshape(HEX(1079:1134,:)',1,[])); ip = hex2dec("0436"); len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[])); ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[]));

%% hw1-2
%
clc; clear; close all;
lena = imread(".\pic\lena.bmp");

subplot(241); imshow(lena,[0,2^8-1]); title('\fontsize{24}lena 8 bit'); lena = bitshift(lena,-1);
subplot(242); imshow(lena,[0,2^7-1]); title('\fontsize{24}lena 7 bit'); lena = bitshift(lena,-1);
subplot(243); imshow(lena,[0,2^6-1]); title('\fontsize{24}lena 6 bit'); lena = bitshift(lena,-1);
subplot(244); imshow(lena,[0,2^5-1]); title('\fontsize{24}lena 5 bit'); lena = bitshift(lena,-1);
subplot(245); imshow(lena,[0,2^4-1]); title('\fontsize{24}lena 4 bit'); lena = bitshift(lena,-1);
subplot(246); imshow(lena,[0,2^3-1]); title('\fontsize{24}lena 3 bit'); lena = bitshift(lena,-1);
subplot(247); imshow(lena,[0,2^2-1]); title('\fontsize{24}lena 2 bit'); lena = bitshift(lena,-1);
subplot(248); imshow(lena,[0,2^1-1]); title('\fontsize{24}lena 1 bit');

%% hw1-3
%
clc; clear; close all;
lena = imread(".\pic\lena.bmp");

mean(lena,1);
mean(lena,2);
fprintf("mean:   %f\n",mean(reshape(lena,1,[])));
var(double(lena),1,1);
var(double(lena),1,2);
fprintf("var:  %f\n",var(double(reshape(lena,1,[])),1));

%% hw1-4
%
clc; clear; close all;
lena = imread(".\pic\lena.bmp");

lena_nearest = imresize(lena,[2048,2048],'nearest');
lena_bilinear = imresize(lena,[2048,2048],'bilinear');
lena_bicubic = imresize(lena,[2048,2048],'bicubic');

figure(1)
subplot(221); imshow(lena); title('lena'); 
subplot(222); imshow(lena_nearest); title('lena nearest');
subplot(223); imshow(lena_bilinear); title('lena bilinear');
subplot(224); imshow(lena_bicubic); title('lena bicubic');

figure(2)
area = [200 250 200 250];
subplot(221); imshow(lena(area(1):area(2),area(3):area(4))); title('lena'); 
subplot(222); imshow(lena_nearest(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('lena nearest');
subplot(223); imshow(lena_bilinear(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('lena bilinear');
subplot(224); imshow(lena_bicubic(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('lena bicubic');

%% hw1-5
%
clc; clear; close all;
elain = imread(".\pic\elain.bmp");
lena = imread(".\pic\lena.bmp");

T_shear = [1 0.2 0; 0 1 0; 0 0 1];
shear = affine2d(T_shear);

elain_shear = imwarp(elain, shear);
elain_shear_nearest = imresize(elain_shear,[2048,2048],'nearest');
elain_shear_bilinear = imresize(elain_shear,[2048,2048],'bilinear');
elain_shear_bicubic = imresize(elain_shear,[2048,2048],'bicubic');

lena_shear = imwarp(lena, shear);
lena_shear_nearest = imresize(lena_shear,[2048,2048],'nearest');
lena_shear_bilinear = imresize(lena_shear,[2048,2048],'bilinear');
lena_shear_bicubic = imresize(lena_shear,[2048,2048],'bicubic');

figure(1)
subplot(241); imshow(elain_shear); title('\fontsize{24}elain shear'); 
subplot(242); imshow(elain_shear_nearest); title('\fontsize{24}elain shear nearest');
subplot(243); imshow(elain_shear_bilinear); title('\fontsize{24}elain shear bilinear');
subplot(244); imshow(elain_shear_bicubic); title('\fontsize{24}elain shear bicubic');
area = [200 250 200 250];
subplot(245); imshow(elain_shear(area(1):area(2),area(3):area(4))); title('\fontsize{24}elain shear'); 
subplot(246); imshow(elain_shear_nearest(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}elain shear nearest');
subplot(247); imshow(elain_shear_bilinear(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}elain shear bilinear');
subplot(248); imshow(elain_shear_bicubic(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}elain shear bicubic');

figure(2)
subplot(241); imshow(lena_shear); title('\fontsize{24}lena shear'); 
subplot(242); imshow(lena_shear_nearest); title('\fontsize{24}lena shear nearest');
subplot(243); imshow(lena_shear_bilinear); title('\fontsize{24}lena shear bilinear');
subplot(244); imshow(lena_shear_bicubic); title('\fontsize{24}lena shear bicubic');
area = [200 250 200 250];
subplot(245); imshow(lena_shear(area(1):area(2),area(3):area(4))); title('\fontsize{24}lena shear'); 
subplot(246); imshow(lena_shear_nearest(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}lena shear nearest');
subplot(247); imshow(lena_shear_bilinear(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}lena shear bilinear');
subplot(248); imshow(lena_shear_bicubic(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}lena shear bicubic');

T_rotation = [cosd(30) -sind(30) 0;sind(30) cosd(30) 0;0 0 1];
rotation = affine2d(T_rotation);

elain_rotation = imwarp(elain, rotation);
elain_rotation_nearest = imresize(elain_rotation,[2048,2048],'nearest');
elain_rotation_bilinear = imresize(elain_rotation,[2048,2048],'bilinear');
elain_rotation_bicubic = imresize(elain_rotation,[2048,2048],'bicubic');

lena_rotation = imwarp(lena, rotation);
lena_rotation_nearest = imresize(lena_rotation,[2048,2048],'nearest');
lena_rotation_bilinear = imresize(lena_rotation,[2048,2048],'bilinear');
lena_rotation_bicubic = imresize(lena_rotation,[2048,2048],'bicubic');

figure(3)
subplot(241); imshow(elain_rotation); title('\fontsize{24}elain rotation'); 
subplot(242); imshow(elain_rotation_nearest); title('\fontsize{24}elain rotation nearest');
subplot(243); imshow(elain_rotation_bilinear); title('\fontsize{24}elain rotation bilinear');
subplot(244); imshow(elain_rotation_bicubic); title('\fontsize{24}elain rotation bicubic');
area = [200 250 200 250];
subplot(245); imshow(elain_rotation(area(1):area(2),area(3):area(4))); title('\fontsize{24}elain rotation'); 
subplot(246); imshow(elain_rotation_nearest(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}elain rotation nearest');
subplot(247); imshow(elain_rotation_bilinear(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}elain rotation bilinear');
subplot(248); imshow(elain_rotation_bicubic(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}elain rotation bicubic');

figure(4)
subplot(241); imshow(lena_rotation); title('\fontsize{24}lena rotation'); 
subplot(242); imshow(lena_rotation_nearest); title('\fontsize{24}lena rotation nearest');
subplot(243); imshow(lena_rotation_bilinear); title('\fontsize{24}lena rotation bilinear');
subplot(244); imshow(lena_rotation_bicubic); title('\fontsize{24}lena rotation bicubic');
area = [200 250 200 250];
subplot(245); imshow(lena_rotation(area(1):area(2),area(3):area(4))); title('\fontsize{24}lena rotation'); 
subplot(246); imshow(lena_rotation_nearest(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}lena rotation nearest');
subplot(247); imshow(lena_rotation_bilinear(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}lena rotation bilinear');
subplot(248); imshow(lena_rotation_bicubic(area(1)*4:area(2)*4,area(3)*4:area(4)*4)); title('\fontsize{24}lena rotation bicubic');