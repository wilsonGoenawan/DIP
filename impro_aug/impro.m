clc;
clear all;

%imgPath = 'path/to/images/folder/';
%imgType = '*.png'; % change based on image type
imgPath = 'C:\Wilson DIP\Part II Dataset\SAH Fixed and Flipped (PNG)\';
outPath = 'C:\Wilson DIP\Pictures\SAH\';
imgType = '*.png';
images  = dir([imgPath imgType]);
N = length(images);

% check images
if( ~exist(imgPath, 'dir') || N<1 )
    disp('Directory not found or no matching images found.');
end

% preallocate cell
Seq{N,1} = [];

for idx = 1:N
    image = imread([imgPath images(idx).name]);
    if size(image,3) == 3
        image = imresize((rgb2gray(image)), [120 140]);
    else
        image = imresize(image, [120 140]);
    end
    Seq{idx} = image;
    imwrite(image, [outPath 'SAH' num2str(idx) '.png']);
end

%imgPath = 'path/to/images/folder/';
%imgType = '*.png'; % change based on image type
imgPath = 'C:\Wilson DIP\Part II Dataset\SDH Fixed and Flipped (PNG)\';
outPath = 'C:\Wilson DIP\Pictures\SDH\';
imgType = '*.png';
images  = dir([imgPath imgType]);
N = length(images);

% check images
if( ~exist(imgPath, 'dir') || N<1 )
    disp('Directory not found or no matching images found.');
end

% preallocate cell
Seq{N,1} = [];

for idx = 1:N
    image = imread([imgPath images(idx).name]);
    if size(image,3) == 3
        image = imresize((rgb2gray(image)), [120 140]);
    else
        image = imresize(image, [120 140]);
    end
    Seq{idx} = image;
    imwrite(image, [outPath 'SDH' num2str(idx) '.png']);
end