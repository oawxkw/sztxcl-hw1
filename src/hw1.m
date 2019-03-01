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
fprintf("Pixel storage: %s\n",reshape(HEX(1079:1134,:)',1,[]));ip = hex2dec("0436"); len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[]));ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[]));ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[]));ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[]));ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[]));ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[]));ip = ip + len; len = 8;
fprintf("0%sH: %s\n",dec2hex(ip),reshape(HEX((ip+1):(ip+len),:)',1,[]));

%% hw1-2
clc; clear; close all;


%% hw1-3
clc; clear; close all;


%% hw1-4
clc; clear; close all;


%% hw1-5
clc; clear; close all;

