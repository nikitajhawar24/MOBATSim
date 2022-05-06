function extractFeatures(data, finalLoc, fname)
    imlocScalogram = finalLoc;
    fs =200;
    for l = 1:20
        if l == 1
            sig = data.Data(1:41 , 8);
            fb = cwtfilterbank('SignalLength',41,...
                               'SamplingFrequency',fs,...
                               'VoicesPerOctave',12);
        else
            sig = transpose(data.Data(1+(l-1)*40+1:l*40+1, 8));
            fb = cwtfilterbank('SignalLength',40,...
                                'SamplingFrequency',fs,...
                                'VoicesPerOctave',12);
        end
        cfs = abs(fb.wt(sig));
        im = ind2rgb(im2uint8(rescale(cfs)),jet(fs));
        disp(size(im));

        imfname = strcat(imlocScalogram, fname, '_scalogram_', string(l), '.jpg');
        imwrite(imresize(im,[224 224]), imfname);

    end
    
    
    
end



% vehicleScenario = load('C:\Users\deepi\OneDrive\Documents\MATLAB\final_Dataset\highWay_70_0_14_14_sample4_faultFree')
% file = 'C:\Users\deepi\OneDrive\Documents\MATLAB\final_Dataset\highWay_70_0_14_14_sample4_faultFree'
% [fPath, fName] = fileparts(file)
% disp(size(vehicleScenario.output.Data))
% 
% % temp = resample(vehicleScenario.output, 10, 1);
% % temp = timeseries(vehicleScenario.output.Time(1:15), 1:15, "name", "data")
% % temp = getsamples(vehicleScenario.output, 1:2005)
% % filename = strcat(fName, "_window_", string(2))
% % save(filename, "temp", '-v7.3')
% % plot(vehicleScenario.output.Data(4006:, 8))
% % 
% fs = 200
% % fb = cwtfilterbank('SignalLength',2000,...
% %     'SamplingFrequency',fs,...
% %     'VoicesPerOctave',12);
% imgloc = 'C:\Users\deepi\OneDrive\Documents\MATLAB\final_Dataset'
% for i = 1:15
%     if i == 1
%         sig = vehicleScenario.output.Data(1:2005, 8);
%         fb = cwtfilterbank('SignalLength',2005,...
%     'SamplingFrequency',fs,...
%     'VoicesPerOctave',12);
%     else
%         sig = transpose(vehicleScenario.output.Data(1+(i-1)*2000+5:i*2000+5, 8));
%         fb = cwtfilterbank('SignalLength',2000,...
%     'SamplingFrequency',fs,...
%     'VoicesPerOctave',12);
%     end
%     cfs = abs(fb.wt(sig));
%     im = ind2rgb(im2uint8(rescale(cfs)),jet(fs));
% 
%     imfname = strcat(fName, '_scalogram_', string(i), '.jpg')
% 
%     imwrite(imresize(im,[224 224]), imfname);
%     imfname = strcat(fName, "_", string(i), '.jpg')
%     figure1 = figure('visible', 'off');
%     plot(sig)
%     saveas(figure1, imfname)
% 
%     
% end

% 
% fs = 200
% fb = cwtfilterbank('SignalLength',2000,...
%     'SamplingFrequency',fs,...
%     'VoicesPerOctave',12);
% 
% sig = transpose(vehicleScenario.output.Data(2006:4005, 8));
% [cfs,frq] = wt(fb,sig);
% t = (0:1999)/fs;
% figure;
% pcolor(t,frq,abs(cfs))
% set(gca,'yscale','log');
% shading interp;axis tight;
% title('Scalogram');
% xlabel('Time (s)');
% ylabel('Frequency (Hz)')



% for i = 1:10
%     if i == 1
%         temp = vehicleScenario.output.Data(1:305, :)
%         data = timeseries(temp, , "name", "Data");
%     else
%         temp = vehicleScenario.output.Data(1+(i-1)*300+5:300*i+5, :)
%         data = timeseries(temp, 1:15:00, "name", "Data");
%     end
%     
%     filename = strcat(fName, "_window_", string(i))
%     save(filename, "data", '-v7.3')
%     
% end


