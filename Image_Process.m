% Read 1_im.jpg through 196_im.png.  
% Files are in the "RGB_Images" directory.
for k = 1:196
  pngFilename1 = sprintf('%d_im.png', k);
  pngFilename2 = sprintf('%d_gt.png', k);
  fullFileName1 = fullfile('/Users','sally','Desktop','Deep Learning','Pix to Pix','ETIS_Class_Data','RGB_Images', pngFilename1);
  fullFileName2 = fullfile('/Users','sally','Desktop','Deep Learning','Pix to Pix','ETIS_Class_Data','Segmentation_Masks', pngFilename2);
  
  imageData1 = imread(fullFileName1 );
  imageData2 = imread(fullFileName2 );
  
  imageCombined = imresize(imageData1,[256 512]);
  imageCombined = [imageData1 imageData2];
  imshow(imageCombined);
  
  pngFilename = sprintf('%d_combined.png', k);
  imwrite(imageCombined, pngFilename);
end


    
