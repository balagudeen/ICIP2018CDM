%Demo code for paper "COLOR IMAGE DEMOSAICKING USING A 3-STAGE CONVOLUTIONAL NEURAL NETWORK STRUCTURE"
%K. Cui, Z. Jin, E. Steinbach, Color Image Demosaicking using a 3-stage Convolutional Neural Network Structure,IEEE International Conference on Image Processing (ICIP 2018), Athens, Greece, Oktober 2018.
%Kai Cui <Kai.cui@tum.de>
%Lehrstuhl fuer Medientechnik
%Technische Universitaet Muenchen
%Last modified 17.05.2018

% We randomly pick up 100 images and create a new dataset for validation. Here are the names of the images.
% '01164.bmp'
% '02428.bmp'
% '00226.bmp'
% '01626.bmp'
% '04250.bmp'
% '01964.bmp'
% '02559.bmp'
% '01275.bmp'
% '01876.bmp'
% '03563.bmp'
% '03386.bmp'
% '03011.bmp'
% '00368.bmp'
% '02898.bmp'
% '02849.bmp'
% '00630.bmp'
% '04408.bmp'
% '00386.bmp'
% '00908.bmp'
% '03721.bmp'
% '04349.bmp'
% '00350.bmp'
% '04501.bmp'
% '04249.bmp'
% '04500.bmp'
% '00334.bmp'
% '01070.bmp'
% '00685.bmp'
% '03392.bmp'
% '03193.bmp'
% '01253.bmp'
% '02101.bmp'
% '02709.bmp'
% '03802.bmp'
% '03003.bmp'
% '03632.bmp'
% '01046.bmp'
% '02670.bmp'
% '03290.bmp'
% '02903.bmp'
% '01467.bmp'
% '04298.bmp'
% '02090.bmp'
% '02835.bmp'
% '00901.bmp'
% '04200.bmp'
% '01309.bmp'
% '00260.bmp'
% '03767.bmp'
% '01971.bmp'
% '01073.bmp'
% '00711.bmp'
% '01674.bmp'
% '03647.bmp'
% '00608.bmp'
% '01051.bmp'
% '02387.bmp'
% '03093.bmp'
% '04109.bmp'
% '00580.bmp'
% '00612.bmp'
% '03469.bmp'
% '03168.bmp'
% '02993.bmp'
% '02045.bmp'
% '04092.bmp'
% '02687.bmp'
% '04000.bmp'
% '01962.bmp'
% '02110.bmp'
% '01746.bmp'
% '02851.bmp'
% '03154.bmp'
% '03057.bmp'
% '03530.bmp'
% '00516.bmp'
% '03964.bmp'
% '01766.bmp'
% '03572.bmp'
% '01742.bmp'
% '03335.bmp'
% '02114.bmp'
% '00753.bmp'
% '01778.bmp'
% '00118.bmp'
% '01090.bmp'
% '01381.bmp'
% '01003.bmp'
% '03914.bmp'
% '04013.bmp'
% '02991.bmp'
% '01143.bmp'
% '02831.bmp'
% '04297.bmp'
% '00359.bmp'
% '02015.bmp'
% '01875.bmp'
% '00714.bmp'
% '03759.bmp'
% '02827.bmp'
% 
% 
% you can quickly create the test dataset by using these few lines of code

test_images_dir = './pristine_images';
test_images = dir(test_images_dir);
test_images = test_images(~[test_images.isdir]);

% ---------Just for pristine_images Dataset---------
rng('default')
RanIdx      = randperm(length(test_images));
test_images = test_images(RanIdx);
test_images = test_images(end-99:end, :);