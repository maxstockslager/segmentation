function resize_image(FN);

im = imread(strcat('raw/', FN));
im_size = size(im);
aspect_ratio = im_size(2)/im_size(1);

max_size = [1080 1920];
im_resized = imresize(im, 1080/1768);

new_size = size(im_resized);
output_id = strcat('resized/', ...
                   strtok(FN, '.tif'), ...
                   '_', ...
                   num2str(new_size(1)), ...
                   '_', ...
                   num2str(new_size(2)), ...
                   '.tif');
imwrite(im_resized, output_id)
end