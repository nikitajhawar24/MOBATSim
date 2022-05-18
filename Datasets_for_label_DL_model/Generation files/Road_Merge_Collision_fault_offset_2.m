%setting fault duration as 5
prepare_simulator_2;
scenario = "Road Merge Collision";

%path to store final faulty and fault-free mat data files
MatFiles = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\Datasets_for_label_DL_model\MAT files\FaultFree\';

%path to store final faulty and fault-free text data files
TextFiles = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\Datasets_for_label_DL_model\txt files\FaultFree\';

%path to store final faulty and fault-free csv data files
CSVFiles = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\Datasets_for_label_DL_model\csv files\FaultFree\';

%path where driving scenario data files are located
parentDir = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\';



fname = strcat(scenario, "fault_free");


%running the simulation
%saving the mat file
sim('MOBATSim_fault_free.slx', 80);


%for vehicle 2
V2 = timeseries(V2_speed.Data,V2_speed.Time);
V2 = resample(V2,linspace(0,80,4000));
arr2 = [V2.Time V2.Data];

filename = strcat(fname, "_V2");
filenametxt = strcat(fname, "_V2", '.txt');
filenamecsv = strcat(fname, "_V2", '.csv');

save(strcat(MatFiles, filename),'V2','-v7.3');
writematrix(arr2,strcat(TextFiles, filenametxt));
writematrix(arr2,strcat(CSVFiles,filenamecsv));

% 
%for vehicle 6
V6 = timeseries(V6_speed.Data,V6_speed.Time);
V6 = resample(V6,linspace(0,80,4000));
arr6 = [V6.Time V6.Data];

filename = strcat(fname, "_V6");
filenametxt = strcat(fname, "_V6", '.txt');
filenamecsv = strcat(fname, "_V6", '.csv');

save(strcat(MatFiles, filename),'V6','-v7.3');
writematrix(arr6,strcat(TextFiles, filenametxt));
writematrix(arr6,strcat(CSVFiles,filenamecsv));

