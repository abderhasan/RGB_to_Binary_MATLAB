% This code enables you to convert an RGB image to a binary image for a group of images
% @author: Abder-Rahman Ali
% abder@cs.stir.ac.uk
D = '/path_to)images';
S = dir(fullfile(D,'*.tif')); 
for k = 1:numel(S)
    F = fullfile(D,S(k).name);
    disp(F);
    I = imread(F);
    if size(I,3)==3
        I2 = rgb2gray(I);
        I3 = imbinarize(I2);
        imwrite(I3,F);
        
    else if islogical(I)
        imwrite(I,F);
        
        else
        I3 = imbinarize(I);
        imwrite(I3,F);
        end
    end
end