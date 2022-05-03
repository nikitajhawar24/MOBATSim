%setting fault duration as 1.2
prepare_simulator;
scenario = "Urban City Traffic";
faultDuration = 1.2;

%path to store final faulty and fault-free mat data files
finalDataMatFiles = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\';

%path to store final faulty and fault-free text data files
finalDataTextFiles = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextFiles\';

%path where driving scenario data files are located
parentDir = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\';


%getting the block parameters of FI blocks
blockParamFaultInjecV2 = Simulink.Mask.get('MOBATSim/Vehicle Model 2/FIBlock2');
blockParamFaultInjec1V2 = Simulink.Mask.get('MOBATSim/Vehicle Model 2/FIBlock1');
blockParamFaultInjecV6 = Simulink.Mask.get('MOBATSim/Vehicle Model 6/FIBlock');
blockParamFaultInjec1V6 = Simulink.Mask.get('MOBATSim/Vehicle Model 6/FIBlock1');

SpeedSensorFInjEnV2 = blockParamFaultInjecV2.Parameters(2);
SpeedSensorFaultTypeV2 = blockParamFaultInjecV2.Parameters(3);
SpeedSensorFaultValueV2 = blockParamFaultInjecV2.Parameters(4);
SpeedSensorFaultEventV2 = blockParamFaultInjecV2.Parameters(5);
SpeedSensorEventValueV2 = blockParamFaultInjecV2.Parameters(6);
SpeedSensorFaultEffectV2 = blockParamFaultInjecV2.Parameters(7);
SpeedSensorEffectValueV2 = blockParamFaultInjecV2.Parameters(8);

DistanceSensorFInjEnV2 = blockParamFaultInjec1V2.Parameters(2);
DistanceSensorFaultTypeV2 = blockParamFaultInjec1V2.Parameters(3);
DistanceSensorFaultValueV2 = blockParamFaultInjec1V2.Parameters(4);
DistanceSensorFaultEventV2 = blockParamFaultInjec1V2.Parameters(5);
DistanceSensorEventValueV2 = blockParamFaultInjec1V2.Parameters(6);
DistanceSensorFaultEffectV2 = blockParamFaultInjec1V2.Parameters(7);
DistanceSensorEffectValueV2 = blockParamFaultInjec1V2.Parameters(8);

SpeedSensorFInjEnV6 = blockParamFaultInjecV6.Parameters(2);
SpeedSensorFaultTypeV6 = blockParamFaultInjecV6.Parameters(3);
SpeedSensorFaultValueV6 = blockParamFaultInjecV6.Parameters(4);
SpeedSensorFaultEventV6 = blockParamFaultInjecV6.Parameters(5);
SpeedSensorEventValueV6 = blockParamFaultInjecV6.Parameters(6);
SpeedSensorFaultEffectV6 = blockParamFaultInjecV6.Parameters(7);
SpeedSensorEffectValueV6 = blockParamFaultInjecV6.Parameters(8);

DistanceSensorFInjEnV6 = blockParamFaultInjec1V6.Parameters(2);
DistanceSensorFaultTypeV6 = blockParamFaultInjec1V6.Parameters(3);
DistanceSensorFaultValueV6 = blockParamFaultInjec1V6.Parameters(4);
DistanceSensorFaultEventV6 = blockParamFaultInjec1V6.Parameters(5);
DistanceSensorEventValueV6 = blockParamFaultInjec1V6.Parameters(6);
DistanceSensorFaultEffectV6 = blockParamFaultInjec1V6.Parameters(7);
DistanceSensorEffectValueV6 = blockParamFaultInjec1V6.Parameters(8);

SpeedSensorFInjEnV2.set('Value', 'off');
DistanceSensorFInjEnV2.set('Value', 'off');
SpeedSensorFInjEnV6.set('Value', 'off');
DistanceSensorFInjEnV6.set('Value', 'off');

PhaseDelay = 0;
% faultDuration = [0.6, 1.2, 1.8, 2.4, 3, 3.6, 4.2, 5];

fname = strcat(scenario, "_Noise_faultduration_1_2");

%setting the pulse width equal to fault duration
PulseWidth = faultDuration;


%setting up the FI block for injecting noise fault at V2
%speed sensor
SpeedSensorFInjEnV2.set('Value', 'on');
SpeedSensorFaultTypeV2.set('Value', 'Noise');
SpeedSensorFaultValueV2.set('Value', '20');
SpeedSensorFaultEventV2.set('Value', 'Deterministic');
SpeedSensorEventValueV2.set('Value', string(PhaseDelay));
SpeedSensorFaultEffectV2.set('Value', 'Constant time');
SpeedSensorEffectValueV2.set('Value', string(faultDuration));

%setting up the FI block for injecting noise fault at V2
%distance sensor
DistanceSensorFInjEnV2.set('Value', 'on');
DistanceSensorFaultTypeV2.set('Value', 'Noise');
DistanceSensorFaultValueV2.set('Value', '20');
DistanceSensorFaultEventV2.set('Value', 'Deterministic');
DistanceSensorEventValueV2.set('Value', string(PhaseDelay));
DistanceSensorFaultEffectV2.set('Value', 'Constant time');
DistanceSensorEffectValueV2.set('Value', string(faultDuration));

%setting up the FI block for injecting noise fault at V6
%speed sensor
SpeedSensorFInjEnV6.set('Value', 'on');
SpeedSensorFaultTypeV6.set('Value', 'Noise');
SpeedSensorFaultValueV6.set('Value', '20');
SpeedSensorFaultEventV6.set('Value', 'Deterministic');
SpeedSensorEventValueV6.set('Value', string(PhaseDelay));
SpeedSensorFaultEffectV6.set('Value', 'Constant time');
SpeedSensorEffectValueV6.set('Value', string(faultDuration));

%setting up the FI block for injecting noise fault at V6
%distance sensor
DistanceSensorFInjEnV6.set('Value', 'on');
DistanceSensorFaultTypeV6.set('Value', 'Noise');
DistanceSensorFaultValueV6.set('Value', '20');
DistanceSensorFaultEventV6.set('Value', 'Deterministic');
DistanceSensorEventValueV6.set('Value', string(PhaseDelay));
DistanceSensorFaultEffectV6.set('Value', 'Constant time');
DistanceSensorEffectValueV6.set('Value', string(faultDuration));

%running the simulation
%saving the mat file
sim('MOBATSim.slx', 80);

%for vehicle 1
V1_concat = [V1_speed.Data V1_rotation.Data V1_translation.Data];
V1 = timeseries(V1_concat,V1_speed.Time);
V1 = resample(V1,linspace(0,80,4000));
arr1 = V1.Data;

filename = strcat(fname, "_V1");
filenametxt = strcat(fname, "_V1", '.txt');

save(strcat(finalDataMatFiles, filename),'V1','-v7.3');
writematrix(arr1,strcat(finalDataTextFiles, filenametxt));

%for vehicle 2
V2_concat = [V2_speed.Data V2_rotation.Data V2_translation.Data];
V2 = timeseries(V2_concat,V2_speed.Time);
V2 = resample(V2,linspace(0,80,4000));
arr2 = V2.Data;

filename = strcat(fname, "_V2");
filenametxt = strcat(fname, "_V2", '.txt');

save(strcat(finalDataMatFiles, filename),'V2','-v7.3');
writematrix(arr2,strcat(finalDataTextFiles, filenametxt));

%for vehicle 3
V3_concat = [V3_speed.Data V3_rotation.Data V3_translation.Data];
V3 = timeseries(V3_concat,V3_speed.Time);
V3 = resample(V3,linspace(0,80,4000));
arr3 = V3.Data;

filename = strcat(fname, "_V3");
filenametxt = strcat(fname, "_V3", '.txt');

save(strcat(finalDataMatFiles, filename),'V3','-v7.3');
writematrix(arr3,strcat(finalDataTextFiles, filenametxt));

%for vehicle 4
V4_concat = [V4_speed.Data V4_rotation.Data V4_translation.Data];
V4 = timeseries(V4_concat,V4_speed.Time);
V4 = resample(V4,linspace(0,80,4000));
arr4 = V4.Data;

filename = strcat(fname, "_V4");
filenametxt = strcat(fname, "_V4", '.txt');

save(strcat(finalDataMatFiles, filename),'V4','-v7.3');
writematrix(arr4,strcat(finalDataTextFiles, filenametxt));

%for vehicle 5
V5_concat = [V5_speed.Data V5_rotation.Data V5_translation.Data];
V5 = timeseries(V5_concat,V5_speed.Time);
V5 = resample(V5,linspace(0,80,4000));
arr5 = V5.Data;

filename = strcat(fname, "_V5");
filenametxt = strcat(fname, "_V5", '.txt');

save(strcat(finalDataMatFiles, filename),'V5','-v7.3');
writematrix(arr5,strcat(finalDataTextFiles, filenametxt));

%for vehicle 6
V6_concat = [V6_speed.Data V6_rotation.Data V6_translation.Data];
V6 = timeseries(V6_concat,V6_speed.Time);
V6 = resample(V6,linspace(0,80,4000));
arr6 = V6.Data;

filename = strcat(fname, "_V6");
filenametxt = strcat(fname, "_V6", '.txt');

save(strcat(finalDataMatFiles, filename),'V6','-v7.3');
writematrix(arr6,strcat(finalDataTextFiles, filenametxt));

%for vehicle 7
V7_concat = [V7_speed.Data V7_rotation.Data V7_translation.Data];
V7 = timeseries(V7_concat,V7_speed.Time);
V7 = resample(V7,linspace(0,80,4000));
arr7 = V7.Data;

filename = strcat(fname, "_V7");
filenametxt = strcat(fname, "_V7", '.txt');

save(strcat(finalDataMatFiles, filename),'V7','-v7.3');
writematrix(arr7,strcat(finalDataTextFiles, filenametxt));

%for vehicle 8
V8_concat = [V8_speed.Data V8_rotation.Data V8_translation.Data];
V8 = timeseries(V8_concat,V8_speed.Time);
V8 = resample(V8,linspace(0,80,4000));
arr8 = V8.Data;

filename = strcat(fname, "_V8");
filenametxt = strcat(fname, "_V8", '.txt');

save(strcat(finalDataMatFiles, filename),'V8','-v7.3');
writematrix(arr8,strcat(finalDataTextFiles, filenametxt));

%for vehicle 9
V9_concat = [V9_speed.Data V9_rotation.Data V9_translation.Data];
V9 = timeseries(V9_concat,V9_speed.Time);
V9 = resample(V9,linspace(0,80,4000));
arr9 = V9.Data;

filename = strcat(fname, "_V9");
filenametxt = strcat(fname, "_V9", '.txt');

save(strcat(finalDataMatFiles, filename),'V9','-v7.3');
writematrix(arr9,strcat(finalDataTextFiles, filenametxt));

%for vehicle 10
V10_concat = [V10_speed.Data V10_rotation.Data V10_translation.Data];
V10 = timeseries(V10_concat,V10_speed.Time);
V10 = resample(V10,linspace(0,80,4000));
arr10 = V10.Data;

filename = strcat(fname, "_V10");
filenametxt = strcat(fname, "_V10", '.txt');

save(strcat(finalDataMatFiles, filename),'V10','-v7.3');
writematrix(arr10,strcat(finalDataTextFiles, filenametxt));