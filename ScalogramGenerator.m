imlocScalogram = "C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\scalogram\faultfree\";
% fs =200;
% scenario = ["Urban city Traffic","Road Merge Collision","Platoon Control"];
% for f = 1:3
%     fname = scenario(f);
%     faultduration = ["0_6","1_2","1_8","2_4","3","3_6","4_2","5"];
%     for j = 1:8
%         k = faultduration(j);
%For vehicle 2

fname = "Urban City Traffic";
fs = 200;

fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\",fname,"\",fname,"_sample_FaultFree_V2");
load (fullFileName);

sig = V2.Data(1:500 , 1);
fb = cwtfilterbank('SignalLength',500,...
    'SamplingFrequency',fs,...
    'VoicesPerOctave',12);


cfs = abs(fb.wt(sig));
im = ind2rgb(im2uint8(rescale(cfs)),jet(fs));
disp(size(im));

imfname = strcat(imlocScalogram, fname, "_1_faultduration_", k, "_V2", '_scalogram_', '.jpg');
imwrite(imresize(im,[224 224]), imfname);

%/////////////////////////////////////////////////////
sig = V2.Data(501:1000 , 1);
fb = cwtfilterbank('SignalLength',500,...
    'SamplingFrequency',fs,...
    'VoicesPerOctave',12);


cfs = abs(fb.wt(sig));
im = ind2rgb(im2uint8(rescale(cfs)),jet(fs));
disp(size(im));

imfname = strcat(imlocScalogram, fname, "_2_faultduration_", k, "_V2", '_scalogram_', '.jpg');
imwrite(imresize(im,[224 224]), imfname);

%/////////////////////////////////////////////////////

sig = V2.Data(1001:1500 , 1);
fb = cwtfilterbank('SignalLength',500,...
    'SamplingFrequency',fs,...
    'VoicesPerOctave',12);


cfs = abs(fb.wt(sig));
im = ind2rgb(im2uint8(rescale(cfs)),jet(fs));
disp(size(im));

imfname = strcat(imlocScalogram, fname, "_3_faultduration_", k, "_V2", '_scalogram_', '.jpg');
imwrite(imresize(im,[224 224]), imfname);

%/////////////////////////////////////////////////////

sig = V2.Data(1501:2000 , 1);
fb = cwtfilterbank('SignalLength',500,...
    'SamplingFrequency',fs,...
    'VoicesPerOctave',12);


cfs = abs(fb.wt(sig));
im = ind2rgb(im2uint8(rescale(cfs)),jet(fs));
disp(size(im));

imfname = strcat(imlocScalogram, fname, "_4_faultduration_", k, "_V2", '_scalogram_', '.jpg');
imwrite(imresize(im,[224 224]), imfname);

%/////////////////////////////////////////////////////

sig = V2.Data(2001:2500 , 1);
fb = cwtfilterbank('SignalLength',500,...
    'SamplingFrequency',fs,...
    'VoicesPerOctave',12);


cfs = abs(fb.wt(sig));
im = ind2rgb(im2uint8(rescale(cfs)),jet(fs));
disp(size(im));

imfname = strcat(imlocScalogram, fname, "_5_faultduration_", k, "_V2", '_scalogram_', '.jpg');
imwrite(imresize(im,[224 224]), imfname);

%/////////////////////////////////////////////////////

sig = V2.Data(2501:3000 , 1);
fb = cwtfilterbank('SignalLength',500,...
    'SamplingFrequency',fs,...
    'VoicesPerOctave',12);


cfs = abs(fb.wt(sig));
im = ind2rgb(im2uint8(rescale(cfs)),jet(fs));
disp(size(im));

imfname = strcat(imlocScalogram, fname, "_6_faultduration_", k, "_V2", '_scalogram_', '.jpg');
imwrite(imresize(im,[224 224]), imfname);

%/////////////////////////////////////////////////////

sig = V2.Data(3001:3500 , 1);
fb = cwtfilterbank('SignalLength',500,...
    'SamplingFrequency',fs,...
    'VoicesPerOctave',12);


cfs = abs(fb.wt(sig));
im = ind2rgb(im2uint8(rescale(cfs)),jet(fs));
disp(size(im));

imfname = strcat(imlocScalogram, fname, "_7_faultduration_", k, "_V2", '_scalogram_', '.jpg');
imwrite(imresize(im,[224 224]), imfname);

%/////////////////////////////////////////////////////

sig = V2.Data(3501:4000 , 1);
fb = cwtfilterbank('SignalLength',500,...
    'SamplingFrequency',fs,...
    'VoicesPerOctave',12);


cfs = abs(fb.wt(sig));
im = ind2rgb(im2uint8(rescale(cfs)),jet(fs));
disp(size(im));

imfname = strcat(imlocScalogram, fname, "_8_faultduration_", k, "_V2", '_scalogram_', '.jpg');
imwrite(imresize(im,[224 224]), imfname);
%     end

