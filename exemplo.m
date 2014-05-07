% Load some image data.
load clown
% Define a colormap that consists of two separate colormaps.
% The object in the left axes will use the first half of the
% colormap, and the object in the right axes will use the
% second half.
cmap1 = map;
cmap2 = gray(size(map,1));
cmap = [cmap1;cmap2];
colormap(cmap)
% Generate the first image.
subplot(121)
image(X)
% Generate the second image.  In this axes, the image data 
% is scaled to start at 1+<the maximum value of other 
% image>.  This is the equivalent of setting the CData 
% for each image so that they have contiguous, nonoverlapping 
% values.
subplot(122)
X2 = X + max(X(:));
image(X2)