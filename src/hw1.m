%% hw1
%  
%% hw1-1
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
clc; clear; close all;
lena = imread(".\pic\lena.bmp");

subplot(241); imshow(lena,[0,255]); title('\fontsize{24}lena 8 bit'); lena = bitshift(lena,-1);
subplot(242); imshow(lena,[0,127]); title('\fontsize{24}lena 7 bit'); lena = bitshift(lena,-1);
subplot(243); imshow(lena,[0,  63]); title('\fontsize{24}lena 6 bit'); lena = bitshift(lena,-1);
subplot(244); imshow(lena,[0,  31]); title('\fontsize{24}lena 5 bit'); lena = bitshift(lena,-1);
subplot(245); imshow(lena,[0,  15]); title('\fontsize{24}lena 4 bit'); lena = bitshift(lena,-1);
subplot(246); imshow(lena,[0,    7]); title('\fontsize{24}lena 3 bit'); lena = bitshift(lena,-1);
subplot(247); imshow(lena,[0,    3]); title('\fontsize{24}lena 2 bit'); lena = bitshift(lena,-1);
subplot(248); imshow(lena,[0,    1]); title('\fontsize{24}lena 1 bit');

%% hw1-3
clc; clear; close all;


%% hw1-4
clc; clear; close all;


%% hw1-5
clc; clear; close all;

