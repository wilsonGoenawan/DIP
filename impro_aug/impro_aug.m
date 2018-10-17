clc;
clear all;

%imgPath = 'path/to/images/folder/';
%imgType = '*.png'; % change based on image type
imgPath = 'C:\Wilson DIP\Pictures\SAH\';
outPath = 'C:\Wilson DIP\Pict impro\SAH\';
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
    image0 = imread([imgPath images(idx).name]);
    imwrite(image0, [outPath 'SAH' num2str(idx) '.png']);
    image1 = fliplr(image0);
    imwrite(image1, [outPath 'SAH_f' num2str(idx) '.png']);
    for i = 1:12
        image = imresize(imrotate(image0,-5*i), [120 140]);
        imwrite(image, [outPath 'SAH_r' num2str(5*i) '_' num2str(idx) '.png']);
        image = imresize(imrotate(image0,5*i), [120 140]);
        imwrite(image, [outPath 'SAH_rn' num2str(5*i) '_' num2str(idx) '.png']);
        image = imresize(imrotate(image1,-5*i), [120 140]);
        imwrite(image, [outPath 'SAH_fr' num2str(5*i) '_' num2str(idx) '.png']);
        image = imresize(imrotate(image1,5*i), [120 140]);
        imwrite(image, [outPath 'SAH_frn' num2str(5*i) '_' num2str(idx) '.png']);
    end
end

%imgPath = 'path/to/images/folder/';
%imgType = '*.png'; % change based on image type
imgPath = 'C:\Wilson DIP\Pictures\SDH\';
outPath = 'C:\Wilson DIP\Pict impro\SDH\';
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
    image0 = imread([imgPath images(idx).name]);
    imwrite(image0, [outPath 'SDH' num2str(idx) '.png']);
    image1 = fliplr(image0);
    imwrite(image1, [outPath 'SDH_f' num2str(idx) '.png']);
    for i = 1:12
        image = imresize(imrotate(image0,-5*i), [120 140]);
        imwrite(image, [outPath 'SDH_r' num2str(5*i) '_' num2str(idx) '.png']);
        image = imresize(imrotate(image0,5*i), [120 140]);
        imwrite(image, [outPath 'SDH_rn' num2str(5*i) '_' num2str(idx) '.png']);
        image = imresize(imrotate(image1,-5*i), [120 140]);
        imwrite(image, [outPath 'SDH_fr' num2str(5*i) '_' num2str(idx) '.png']);
        image = imresize(imrotate(image1,5*i), [120 140]);
        imwrite(image, [outPath 'SDH_frn' num2str(5*i) '_' num2str(idx) '.png']);
    end
end