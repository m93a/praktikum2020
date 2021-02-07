pkg load signal

filenames = ls('data/images');
inputs = strcat('data/images/', filenames);
outputsRaw = strcat('zprac1/', filenames, '_raw.dat');
outputsPeaks = strcat('zprac1/', filenames, '_peaks.dat');

for i = 1:size(inputs)
  disp(filenames(i,:));
  data = imread(deblank(inputs(i,:)))(120:965,836,1);
  [peaks idx] = findpeaks(
    double(data),
    "MinPeakHeight", 80);
  
  file = fopen(deblank(outputsRaw(i,:)), 'w');
  for j = 1:size(data)
    fdisp(file, [double(j), double(data(j))]);
  end
  fclose(file);
  
  file = fopen(deblank(outputsPeaks(i,:)), 'w');
  fdisp(file, [idx peaks]);
  fclose(file);
 end
 
