function grayImage = rgbTogray(rgbImage)
  [rows, columns, numberOfColorChannels] = size(rgbImage);
  if numberOfColorChannels  == 3
      redChannel = rgbImage(:, :, 1);
      greenChannel = rgbImage(:, :, 2);
      blueChannel = rgbImage(:, :, 3);
      
      grayImage = .299*double(redChannel) + ...
                  .587*double(greenChannel) + ...
                  .114*double(blueChannel);
      
      grayImage = uint8(grayImage);
	 % imshow(grayImage),title('rgbTogray');
  else
      grayImage = rgbImage;  % Input image is not really RGB color.
  end
end