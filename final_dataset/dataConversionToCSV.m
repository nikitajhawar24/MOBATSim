% for i = 1:80
%     faultduration = ["0_6","1_2","1_8","2_4","3","3_6","4_2","5"];
%     for x = 1:8
%         j = faultduration(x);
fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\Platoon Control\Platoon Control_sample_FaultFree_V1");
csvfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalCSVfiles\Platoon Control\Platoon Control_sample_FaultFree_V1.csv");
textfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextfiles\Platoon Control\Platoon Control_sample_FaultFree_V1.txt");
load (fullFileName);
data = [V1.Time V1.Data];
writematrix(data,csvfilename);
writematrix(data,textfilename);
clear data;


fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\Platoon Control\Platoon Control_sample_FaultFree_V2");
csvfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalCSVfiles\Platoon Control\Platoon Control_sample_FaultFree_V2.csv");
textfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextfiles\Platoon Control\Platoon Control_sample_FaultFree_V2.txt");
load (fullFileName);
data = [V2.Time V2.Data];
writematrix(data,csvfilename);
writematrix(data,textfilename);
clear data;


fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\Platoon Control\Platoon Control_sample_FaultFree_V3");
csvfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalCSVfiles\Platoon Control\Platoon Control_sample_FaultFree_V3.csv");
textfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextfiles\Platoon Control\Platoon Control_sample_FaultFree_V3.txt");
load (fullFileName);
data = [V3.Time V3.Data];
writematrix(data,csvfilename);
writematrix(data,textfilename);
clear data;


fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\Platoon Control\Platoon Control_sample_FaultFree_V4");
csvfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalCSVfiles\Platoon Control\Platoon Control_sample_FaultFree_V4.csv");
textfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextfiles\Platoon Control\Platoon Control_sample_FaultFree_V4.txt");
load (fullFileName);
data = [V4.Time V4.Data];
writematrix(data,csvfilename);
writematrix(data,textfilename);
clear data;


fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\Platoon Control\Platoon Control_sample_FaultFree_V5");
csvfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalCSVfiles\Platoon Control\Platoon Control_sample_FaultFree_V5.csv");
textfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextfiles\Platoon Control\Platoon Control_sample_FaultFree_V5.txt");
load (fullFileName);
data = [V5.Time V5.Data];
writematrix(data,csvfilename);
writematrix(data,textfilename);
clear data;


fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\Platoon Control\Platoon Control_sample_FaultFree_V6");
csvfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalCSVfiles\Platoon Control\Platoon Control_sample_FaultFree_V6.csv");
textfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextfiles\Platoon Control\Platoon Control_sample_FaultFree_V6.txt");
load (fullFileName);
data = [V6.Time V6.Data];
writematrix(data,csvfilename);
writematrix(data,textfilename);
clear data;


fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\Platoon Control\Platoon Control_sample_FaultFree_V7");
csvfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalCSVfiles\Platoon Control\Platoon Control_sample_FaultFree_V7.csv");
textfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextfiles\Platoon Control\Platoon Control_sample_FaultFree_V7.txt");
load (fullFileName);
data = [V7.Time V7.Data];
writematrix(data,csvfilename);
writematrix(data,textfilename);
clear data;


fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\Platoon Control\Platoon Control_sample_FaultFree_V8");
csvfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalCSVfiles\Platoon Control\Platoon Control_sample_FaultFree_V8.csv");
textfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextfiles\Platoon Control\Platoon Control_sample_FaultFree_V8.txt");
load (fullFileName);
data = [V8.Time V8.Data];
writematrix(data,csvfilename);
writematrix(data,textfilename);
clear data;


fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\Platoon Control\Platoon Control_sample_FaultFree_V9");
csvfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalCSVfiles\Platoon Control\Platoon Control_sample_FaultFree_V9.csv");
textfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextfiles\Platoon Control\Platoon Control_sample_FaultFree_V9.txt");
load (fullFileName);
data = [V9.Time V9.Data];
writematrix(data,csvfilename);
writematrix(data,textfilename);
clear data;


fullFileName = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\Platoon Control\Platoon Control_sample_FaultFree_V10");
csvfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalCSVfiles\Platoon Control\Platoon Control_sample_FaultFree_V10.csv");
textfilename = strcat("C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextfiles\Platoon Control\Platoon Control_sample_FaultFree_V10.txt");
load (fullFileName);
data = [V10.Time V10.Data];
writematrix(data,csvfilename);
writematrix(data,textfilename);
clear data;
