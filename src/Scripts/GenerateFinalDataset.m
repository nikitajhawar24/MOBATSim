%path to store final faulty and fault-free mat data files 
finalDataMatFiles = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDataMatFiles\';

%path to store final faulty and fault-free text data files 
finalDataTextFiles = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\finalDatatextFiles\';

%path where driving scenario data files are located
parentDir = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\';

scenarioName = ['Urban city Traffic'];
%city 
InitialPosV1 = ["46","47","48"];
InitialPosV2 = ["47","69","53"];
InitialPosV3 = ["84","85","86"];
InitialPosV4 = ["3","2","1"];
InitialPosV5 = ["54","78","42"];
InitialPosV6 = ["64","50","44"];
InitialPosV7 = ["58","56","70"];
InitialPosV8 = ["57","67","55"];
InitialPosV9 = ["4","5","6"];
InitialPosV10 = ["63","68","70"];
InitialSpeedV1 = ["3","2","3"];
InitialSpeedV2 = ["18","17","16"];
InitialSpeedV3 = ["3","2","3"];
InitialSpeedV4 = ["7","6","5"];
InitialSpeedV5 = ["14","13","12"];
InitialSpeedV6 = ["10","9","8"];
InitialSpeedV7 = ["0.1","0.2","0.3"];
InitialSpeedV8 = ["4","3","2"];
InitialSpeedV9 = ["10","9","10"];
InitialSpeedV10 = ["10","9","10"];

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

PulseWidth = 3; 
PhaseDelay = 0;
faultDuration = [0.6, 1.2, 1.8, 2.4, 3, 3.6, 4.2, 5];

for i = 1:length(InitialPosV1)
  posV1 = InitialPosV1(i);
  posV2 = InitialPosV2(i);
  posV3 = InitialPosV3(i);
  posV4 = InitialPosV4(i);
  posV5 = InitialPosV5(i);
  posV6 = InitialPosV6(i);
  posV7 = InitialPosV7(i);
  posV8 = InitialPosV8(i);
  posV9 = InitialPosV9(i);
  posV10 = InitialPosV10(i);
   for j = 1:length(InitialSpeedV1)
       speedV1 = InitialSpeedV1(j);
       speedV2 = InitialSpeedV2(j);
       speedV3 = InitialSpeedV3(j);
       speedV4 = InitialSpeedV4(j);
       speedV5 = InitialSpeedV5(j);
       speedV6 = InitialSpeedV6(j);
       speedV7 = InitialSpeedV7(j);
       speedV8 = InitialSpeedV8(j);
       speedV9 = InitialSpeedV9(j);
       speedV10 = InitialSpeedV10(j);
       
            fname = strcat("Urban City Traffic_", InitialPosV1(i), "_",...
                            InitialPosV2(i), "_", InitialPosV3(i), "_", InitialPosV4(i), "_",...
                            InitialPosV5(i), "_",InitialPosV6(i), "_",InitialPosV7(i), "_",...
                            InitialPosV8(i), "_",InitialPosV9(i), "_",InitialPosV10(i), "_",...
                            replace(InitialSpeedV1(j), ".", "_"), replace(InitialSpeedV2(j), ".", "_"),...
                            replace(InitialSpeedV3(j), ".", "_"),replace(InitialSpeedV4(j), ".", "_"),...
                            replace(InitialSpeedV5(j), ".", "_"), replace(InitialSpeedV6(j), ".", "_"),...
                            replace(InitialSpeedV7(j), ".", "_"), replace(InitialSpeedV8(j), ".", "_"),...
                            replace(InitialSpeedV9(j), ".", "_"), replace(InitialSpeedV10(j), ".", "_"),...
                            "_sample",string(1));
%            
            fName = strcat(parentDir, fname);
            
            %loading a scenario and just saving as it as fault-free file
            sim('MOBATSim_fault_free.slx', 80);
                
            %for vehicle 1
            V1_concat = [V1_speed.Data V1_rotation.Data V1_translation.Data];
            V1 = timeseries(V1_concat,V1_speed.Time);
            V1 = resample(V1,linspace(0,80,4000));
            arr1 = V1.Data;
            
            filename = strcat(fname, "_FaultFree_");
            filenametxt = strcat(fname, "_FaultFree_", '.txt');
            
            save(strcat(finalDataMatFiles, filename),'V1','-v7.3');
            writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
            
            %for vehicle 2
            V2_concat = [V2_speed.Data V2_rotation.Data V2_translation.Data];
            V2 = timeseries(V2_concat,V2_speed.Time);
            V2 = resample(V2,linspace(0,80,4000));
            arr1 = V2.Data;
            
            filename = strcat(fname, "_FaultFree_");
            filenametxt = strcat(fname, "_FaultFree_", '.txt');
            
            save(strcat(finalDataMatFiles, filename),'V2','-v7.3');
            writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
            
            %for vehicle 3
            V3_concat = [V3_speed.Data V3_rotation.Data V3_translation.Data];
            V3 = timeseries(V3_concat,V3_speed.Time);
            V3 = resample(V3,linspace(0,80,4000));
            arr1 = V3.Data;
            
            filename = strcat(fname, "_FaultFree_");
            filenametxt = strcat(fname, "_FaultFree_", '.txt');
            
            save(strcat(finalDataMatFiles, filename),'V3','-v7.3');
            writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
            
            %for vehicle 4
            V4_concat = [V4_speed.Data V4_rotation.Data V4_translation.Data];
            V4 = timeseries(V4_concat,V4_speed.Time);
            V4 = resample(V4,linspace(0,80,4000));
            arr1 = V4.Data;
            
            filename = strcat(fname, "_FaultFree_");
            filenametxt = strcat(fname, "_FaultFree_", '.txt');
            
            save(strcat(finalDataMatFiles, filename),'V4','-v7.3');
            writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
            
            %for vehicle 5
            V5_concat = [V5_speed.Data V5_rotation.Data V5_translation.Data];
            V5 = timeseries(V5_concat,V5_speed.Time);
            V5 = resample(V5,linspace(0,80,4000));
            arr1 = V5.Data;
            
            filename = strcat(fname, "_FaultFree_");
            filenametxt = strcat(fname, "_FaultFree_", '.txt');
            
            save(strcat(finalDataMatFiles, filename),'V5','-v7.3');
            writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
            
            %for vehicle 6
            V6_concat = [V6_speed.Data V6_rotation.Data V6_translation.Data];
            V6 = timeseries(V6_concat,V6_speed.Time);
            V6 = resample(V6,linspace(0,80,4000));
            arr1 = V6.Data;
            
            filename = strcat(fname, "_FaultFree_");
            filenametxt = strcat(fname, "_FaultFree_", '.txt');
            
            save(strcat(finalDataMatFiles, filename),'V6','-v7.3');
            writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
            
            %for vehicle 7
            V7_concat = [V7_speed.Data V7_rotation.Data V7_translation.Data];
            V7 = timeseries(V7_concat,V7_speed.Time);
            V7 = resample(V7,linspace(0,80,4000));
            arr1 = V7.Data;
            
            filename = strcat(fname, "_FaultFree_");
            filenametxt = strcat(fname, "_FaultFree_", '.txt');
            
            save(strcat(finalDataMatFiles, filename),'V7','-v7.3');
            writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
            
            %for vehicle 8
            V8_concat = [V8_speed.Data V8_rotation.Data V8_translation.Data];
            V8 = timeseries(V8_concat,V8_speed.Time);
            V8 = resample(V8,linspace(0,80,4000));
            arr1 = V8.Data;
            
            filename = strcat(fname, "_FaultFree_");
            filenametxt = strcat(fname, "_FaultFree_", '.txt');
            
            save(strcat(finalDataMatFiles, filename),'V8','-v7.3');
            writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
            
            %for vehicle 9
            V9_concat = [V9_speed.Data V9_rotation.Data V9_translation.Data];
            V9 = timeseries(V9_concat,V9_speed.Time);
            V9 = resample(V9,linspace(0,80,4000));
            arr1 = V9.Data;
            
            filename = strcat(fname, "_FaultFree_");
            filenametxt = strcat(fname, "_FaultFree_", '.txt');
            
            save(strcat(finalDataMatFiles, filename),'V9','-v7.3');
            writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
            
            %for vehicle 10
            V10_concat = [V10_speed.Data V10_rotation.Data V10_translation.Data];
            V10 = timeseries(V10_concat,V10_speed.Time);
            V10 = resample(V10,linspace(0,80,4000));
            arr1 = V10.Data;
            
            filename = strcat(fname, "_FaultFree_");
            filenametxt = strcat(fname, "_FaultFree_", '.txt');
            
            save(strcat(finalDataMatFiles, filename),'V10','-v7.3');
            writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
            
            %iterating through the fault durations
            for n = 1:length(faultDuration)
                 
                %setting the pulse width equal to fault duration
                PulseWidth = faultDuration(n);
                
                %setting up the FI block for injecting stuck-at fault at V2
                %speed sensor
                SpeedSensorFInjEnV2.set('Value', 'on');
                SpeedSensorFaultTypeV2.set('Value', 'Stuck-at');
                SpeedSensorFaultEventV2.set('Value', 'Deterministic');
                SpeedSensorEventValueV2.set('Value', string(PhaseDelay));
                SpeedSensorFaultEffectV2.set('Value', 'Constant time');
                SpeedSensorEffectValueV2.set('Value', string(faultDuration(n)));
                
                %setting up the FI block for injecting stuck-at fault at V2
                %distance sensor
                DistanceSensorFInjEnV2.set('Value', 'on');
                DistanceSensorFaultTypeV2.set('Value', 'Stuck-at');
                DistanceSensorFaultEventV2.set('Value', 'Deterministic');
                DistanceSensorEventValueV2.set('Value', string(PhaseDelay));
                DistanceSensorFaultEffectV2.set('Value', 'Constant time');
                DistanceSensorEffectValueV2.set('Value', string(faultDuration(n)));
                
                %setting up the FI block for injecting stuck-at fault at V6
                %speed sensor
                SpeedSensorFInjEnV6.set('Value', 'on');
                SpeedSensorFaultTypeV6.set('Value', 'Stuck-at');
                SpeedSensorFaultEventV6.set('Value', 'Deterministic');
                SpeedSensorEventValueV6.set('Value', string(PhaseDelay));
                SpeedSensorFaultEffectV6.set('Value', 'Constant time');
                SpeedSensorEffectValueV6.set('Value', string(faultDuration(n)));
                
                %setting up the FI block for injecting stuck-at fault at V6
                %distance sensor
                DistanceSensorFInjEnV2.set('Value', 'on');
                DistanceSensorFaultTypeV2.set('Value', 'Stuck-at');
                DistanceSensorFaultEventV2.set('Value', 'Deterministic');
                DistanceSensorEventValueV2.set('Value', string(PhaseDelay));
                DistanceSensorFaultEffectV2.set('Value', 'Constant time');
                DistanceSensorEffectValueV2.set('Value', string(faultDuration(n)));
%                 
                
                %running the simulation
                
                %saving the mat file 
                sim('MOBATSim.slx', 80);
                
                %for vehicle 1
                V1_concat = [V1_speed.Data V1_rotation.Data V1_translation.Data];
                V1 = timeseries(V1_concat,V1_speed.Time);
                V1 = resample(V1,linspace(0,80,4000));
                arr1 = V1.Data;
                
                filename = strcat(fname, "_StuckAt__", string(n));
                filenametxt = strcat(fname, "_StuckAt__", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V1','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 2
                V2_concat = [V2_speed.Data V2_rotation.Data V2_translation.Data];
                V2 = timeseries(V2_concat,V2_speed.Time);
                V2 = resample(V2,linspace(0,80,4000));
                arr1 = V2.Data;
                
                filename = strcat(fname, "_StuckAt__", string(n));
                filenametxt = strcat(fname, "_StuckAt__", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V2','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 3
                V3_concat = [V3_speed.Data V3_rotation.Data V3_translation.Data];
                V3 = timeseries(V3_concat,V3_speed.Time);
                V3 = resample(V3,linspace(0,80,4000));
                arr1 = V3.Data;
                
                filename = strcat(fname, "_StuckAt__", string(n));
                filenametxt = strcat(fname, "_StuckAt__", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V3','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 4
                V4_concat = [V4_speed.Data V4_rotation.Data V4_translation.Data];
                V4 = timeseries(V4_concat,V4_speed.Time);
                V4 = resample(V4,linspace(0,80,4000));
                arr1 = V4.Data;
                
                filename = strcat(fname, "_StuckAt__", string(n));
                filenametxt = strcat(fname, "_StuckAt__", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V4','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %for vehicle 5
                V5_concat = [V5_speed.Data V5_rotation.Data V5_translation.Data];
                V5 = timeseries(V5_concat,V5_speed.Time);
                V5 = resample(V5,linspace(0,80,4000));
                arr1 = V5.Data;
                
                filename = strcat(fname, "_StuckAt__", string(n));
                filenametxt = strcat(fname, "_StuckAt__", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V5','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %for vehicle 6
                V6_concat = [V6_speed.Data V6_rotation.Data V6_translation.Data];
                V6 = timeseries(V6_concat,V6_speed.Time);
                V6 = resample(V6,linspace(0,80,4000));
                arr1 = V6.Data;
                
                filename = strcat(fname, "_StuckAt__", string(n));
                filenametxt = strcat(fname, "_StuckAt__", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V6','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 7
                V7_concat = [V7_speed.Data V7_rotation.Data V7_translation.Data];
                V7 = timeseries(V7_concat,V7_speed.Time);
                V7 = resample(V7,linspace(0,80,4000));
                arr1 = V7.Data;
                
                filename = strcat(fname, "_StuckAt__", string(n));
                filenametxt = strcat(fname, "_StuckAt__", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V7','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
             
                %for vehicle 8
                V8_concat = [V8_speed.Data V8_rotation.Data V8_translation.Data];
                V8 = timeseries(V8_concat,V8_speed.Time);
                V8 = resample(V8,linspace(0,80,4000));
                arr1 = V8.Data;
                
                filename = strcat(fname, "_StuckAt__", string(n));
                filenametxt = strcat(fname, "_StuckAt__", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V8','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %for vehicle 9
                V9_concat = [V9_speed.Data V9_rotation.Data V9_translation.Data];
                V9 = timeseries(V9_concat,V9_speed.Time);
                V9 = resample(V9,linspace(0,80,4000));
                arr1 = V9.Data;
                
                filename = strcat(fname, "_StuckAt__", string(n));
                filenametxt = strcat(fname, "_StuckAt__", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V9','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                 
                %for vehicle 10
                V10_concat = [V10_speed.Data V10_rotation.Data V10_translation.Data];
                V10 = timeseries(V10_concat,V10_speed.Time);
                V10 = resample(V10,linspace(0,80,4000));
                arr1 = V10.Data;
                
                filename = strcat(fname, "_StuckAt__", string(n));
                filenametxt = strcat(fname, "_StuckAt__", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V10','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %setting up the FI block for injecting noise fault at V2
                %speed sensor
                SpeedSensorFaultTypeV2.set('Value', 'Noise');
                SpeedSensorFaultValueV2.set('Value', '20');
                SpeedSensorFaultEventV2.set('Value', 'Deterministic');
                SpeedSensorEventValueV2.set('Value', string(PhaseDelay));
                SpeedSensorFaultEffectV2.set('Value', 'Constant time');
                SpeedSensorEffectValueV2.set('Value', string(faultDuration(n)));
                
                %setting up the FI block for injecting noise fault at V2
                %distance sensor
                DistanceSensorFaultTypeV2.set('Value', 'Noise');
                DistanceSensorFaultValueV2.set('Value', '20');
                DistanceSensorFaultEventV2.set('Value', 'Deterministic');
                DistanceSensorEventValueV2.set('Value', string(PhaseDelay));
                DistanceSensorFaultEffectV2.set('Value', 'Constant time');
                DistanceSensorEffectValueV2.set('Value', string(faultDuration(n)));
                
                %setting up the FI block for injecting noise fault at V6
                %speed sensor
                SpeedSensorFaultTypeV6.set('Value', 'Noise');
                SpeedSensorFaultValueV6.set('Value', '20');
                SpeedSensorFaultEventV6.set('Value', 'Deterministic');
                SpeedSensorEventValueV6.set('Value', string(PhaseDelay));
                SpeedSensorFaultEffectV6.set('Value', 'Constant time');
                SpeedSensorEffectValueV6.set('Value', string(faultDuration(n)));
                
                %setting up the FI block for injecting noise fault at V6
                %distance sensor
                DistanceSensorFaultTypeV6.set('Value', 'Noise');
                DistanceSensorFaultValueV6.set('Value', '20');
                DistanceSensorFaultEventV6.set('Value', 'Deterministic');
                DistanceSensorEventValueV6.set('Value', string(PhaseDelay));
                DistanceSensorFaultEffectV6.set('Value', 'Constant time');
                DistanceSensorEffectValueV6.set('Value', string(faultDuration(n)));
                 
                %running the simulation            
                %saving the mat file 
                sim('MOBATSim.slx', 80);
                
                %for vehicle 1
                V1_concat = [V1_speed.Data V1_rotation.Data V1_translation.Data];
                V1 = timeseries(V1_concat,V1_speed.Time);
                V1 = resample(V1,linspace(0,80,4000));
                arr1 = V1.Data;
                
                filename = strcat(fname, "_Noise_", string(n));
                filenametxt = strcat(fname, "_Noise_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V1','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 2
                V2_concat = [V2_speed.Data V2_rotation.Data V2_translation.Data];
                V2 = timeseries(V2_concat,V2_speed.Time);
                V2 = resample(V2,linspace(0,80,4000));
                arr1 = V2.Data;
                
                filename = strcat(fname, "_Noise_", string(n));
                filenametxt = strcat(fname, "_Noise_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V2','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 3
                V3_concat = [V3_speed.Data V3_rotation.Data V3_translation.Data];
                V3 = timeseries(V3_concat,V3_speed.Time);
                V3 = resample(V3,linspace(0,80,4000));
                arr1 = V3.Data;
                
                filename = strcat(fname, "_Noise_", string(n));
                filenametxt = strcat(fname, "_Noise_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V3','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 4
                V4_concat = [V4_speed.Data V4_rotation.Data V4_translation.Data];
                V4 = timeseries(V4_concat,V4_speed.Time);
                V4 = resample(V4,linspace(0,80,4000));
                arr1 = V4.Data;
                
                filename = strcat(fname, "_Noise_", string(n));
                filenametxt = strcat(fname, "_Noise_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V4','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %for vehicle 5
                V5_concat = [V5_speed.Data V5_rotation.Data V5_translation.Data];
                V5 = timeseries(V5_concat,V5_speed.Time);
                V5 = resample(V5,linspace(0,80,4000));
                arr1 = V5.Data;
                
                filename = strcat(fname, "_Noise_", string(n));
                filenametxt = strcat(fname, "_Noise_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V5','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %for vehicle 6
                V6_concat = [V6_speed.Data V6_rotation.Data V6_translation.Data];
                V6 = timeseries(V6_concat,V6_speed.Time);
                V6 = resample(V6,linspace(0,80,4000));
                arr1 = V6.Data;
                
                filename = strcat(fname, "_Noise_", string(n));
                filenametxt = strcat(fname, "_Noise_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V6','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 7
                V7_concat = [V7_speed.Data V7_rotation.Data V7_translation.Data];
                V7 = timeseries(V7_concat,V7_speed.Time);
                V7 = resample(V7,linspace(0,80,4000));
                arr1 = V7.Data;
                
                filename = strcat(fname, "_Noise_", string(n));
                filenametxt = strcat(fname, "_Noise_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V7','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
             
                %for vehicle 8
                V8_concat = [V8_speed.Data V8_rotation.Data V8_translation.Data];
                V8 = timeseries(V8_concat,V8_speed.Time);
                V8 = resample(V8,linspace(0,80,4000));
                arr1 = V8.Data;
                
                filename = strcat(fname, "_Noise_", string(n));
                filenametxt = strcat(fname, "_Noise_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V8','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %for vehicle 9
                V9_concat = [V9_speed.Data V9_rotation.Data V9_translation.Data];
                V9 = timeseries(V9_concat,V9_speed.Time);
                V9 = resample(V9,linspace(0,80,4000));
                arr1 = V9.Data;
                
                filename = strcat(fname, "_Noise_", string(n));
                filenametxt = strcat(fname, "_Noise_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V9','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                 
                %for vehicle 10
                V10_concat = [V10_speed.Data V10_rotation.Data V10_translation.Data];
                V10 = timeseries(V10_concat,V10_speed.Time);
                V10 = resample(V10,linspace(0,80,4000));
                arr1 = V10.Data;
                
                filename = strcat(fname, "_Noise_", string(n));
                filenametxt = strcat(fname, "_Noise_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V10','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %setting up the FI block for injecting offset fault at V2
                %speed sensor
                SpeedSensorFaultTypeV2.set('Value', 'Bias/Offset');
                SpeedSensorFaultValueV2.set('Value', '5');
                SpeedSensorFaultEventV2.set('Value', 'Deterministic');
                SpeedSensorEventValueV2.set('Value', string(PhaseDelay));
                SpeedSensorFaultEffectV2.set('Value', 'Constant time');
                SpeedSensorEffectValueV2.set('Value', string(faultDuration(n)));
                
                %setting up the FI block for injecting offset fault at V2
                %distance sensor
                DistanceSensorFaultTypeV2.set('Value', 'Bias/Offset');
                DistanceSensorFaultValueV2.set('Value', '5');
                DistanceSensorFaultEventV2.set('Value', 'Deterministic');
                DistanceSensorEventValueV2.set('Value', string(PhaseDelay));
                DistanceSensorFaultEffectV2.set('Value', 'Constant time');
                DistanceSensorEffectValueV2.set('Value', string(faultDuration(n)));
                
                %setting up the FI block for injecting offset fault at V6
                %speed sensor
                SpeedSensorFaultTypeV6.set('Value', 'Bias/Offset');
                SpeedSensorFaultValueV6.set('Value', '5');
                SpeedSensorFaultEventV6.set('Value', 'Deterministic');
                SpeedSensorEventValueV6.set('Value', string(PhaseDelay));
                SpeedSensorFaultEffectV6.set('Value', 'Constant time');
                SpeedSensorEffectValueV6.set('Value', string(faultDuration(n)));
                
                %setting up the FI block for injecting offset fault at V6
                %distance sensor
                DistanceSensorFaultTypeV6.set('Value', 'Bias/Offset');
                DistanceSensorFaultValueV6.set('Value', '5');
                DistanceSensorFaultEventV6.set('Value', 'Deterministic');
                DistanceSensorEventValueV6.set('Value', string(PhaseDelay));
                DistanceSensorFaultEffectV6.set('Value', 'Constant time');
                DistanceSensorEffectValueV6.set('Value', string(faultDuration(n)));
                
                %running the simulation
                %saving the mat file 
                sim('MOBATSim.slx', 80);
                
                %for vehicle 1
                V1_concat = [V1_speed.Data V1_rotation.Data V1_translation.Data];
                V1 = timeseries(V1_concat,V1_speed.Time);
                V1 = resample(V1,linspace(0,80,4000));
                arr1 = V1.Data;
                
                filename = strcat(fname, "_Offset_", string(n));
                filenametxt = strcat(fname, "_Offset_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V1','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 2
                V2_concat = [V2_speed.Data V2_rotation.Data V2_translation.Data];
                V2 = timeseries(V2_concat,V2_speed.Time);
                V2 = resample(V2,linspace(0,80,4000));
                arr1 = V2.Data;
                
                filename = strcat(fname, "_Offset_", string(n));
                filenametxt = strcat(fname, "_Offset_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V2','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 3
                V3_concat = [V3_speed.Data V3_rotation.Data V3_translation.Data];
                V3 = timeseries(V3_concat,V3_speed.Time);
                V3 = resample(V3,linspace(0,80,4000));
                arr1 = V3.Data;
                
                filename = strcat(fname, "_Offset_", string(n));
                filenametxt = strcat(fname, "_Offset_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V3','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 4
                V4_concat = [V4_speed.Data V4_rotation.Data V4_translation.Data];
                V4 = timeseries(V4_concat,V4_speed.Time);
                V4 = resample(V4,linspace(0,80,4000));
                arr1 = V4.Data;
                
                filename = strcat(fname, "_Offset_", string(n));
                filenametxt = strcat(fname, "_Offset_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V4','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %for vehicle 5
                V5_concat = [V5_speed.Data V5_rotation.Data V5_translation.Data];
                V5 = timeseries(V5_concat,V5_speed.Time);
                V5 = resample(V5,linspace(0,80,4000));
                arr1 = V5.Data;
                
                filename = strcat(fname, "_Offset_", string(n));
                filenametxt = strcat(fname, "_Offset_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V5','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %for vehicle 6
                V6_concat = [V6_speed.Data V6_rotation.Data V6_translation.Data];
                V6 = timeseries(V6_concat,V6_speed.Time);
                V6 = resample(V6,linspace(0,80,4000));
                arr1 = V6.Data;
                
                filename = strcat(fname, "_Offset_", string(n));
                filenametxt = strcat(fname, "_Offset_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V6','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
               
                %for vehicle 7
                V7_concat = [V7_speed.Data V7_rotation.Data V7_translation.Data];
                V7 = timeseries(V7_concat,V7_speed.Time);
                V7 = resample(V7,linspace(0,80,4000));
                arr1 = V7.Data;
                
                filename = strcat(fname, "_Offset_", string(n));
                filenametxt = strcat(fname, "_Offset_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V7','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
             
                %for vehicle 8
                V8_concat = [V8_speed.Data V8_rotation.Data V8_translation.Data];
                V8 = timeseries(V8_concat,V8_speed.Time);
                V8 = resample(V8,linspace(0,80,4000));
                arr1 = V8.Data;
                
                filename = strcat(fname, "_Offset_", string(n));
                filenametxt = strcat(fname, "_Offset_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V8','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %for vehicle 9
                V9_concat = [V9_speed.Data V9_rotation.Data V9_translation.Data];
                V9 = timeseries(V9_concat,V9_speed.Time);
                V9 = resample(V9,linspace(0,80,4000));
                arr1 = V9.Data;
                
                filename = strcat(fname, "_Offset_", string(n));
                filenametxt = strcat(fname, "_Offset_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V9','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                 
                %for vehicle 10
                V10_concat = [V10_speed.Data V10_rotation.Data V10_translation.Data];
                V10 = timeseries(V10_concat,V10_speed.Time);
                V10 = resample(V10,linspace(0,80,4000));
                arr1 = V10.Data;
                
                filename = strcat(fname, "_Offset_", string(n));
                filenametxt = strcat(fname, "_Offset_", string(n), '.txt');
                
                save(strcat(finalDataMatFiles, filename),'V10','-v7.3');
                writematrix(arr1,strcat(finalDataTextFiles, filenametxt));
                
                %disabling the fault injection block
                SpeedSensorFInjEnV2.set('Value', 'off')
                DistanceSensorFInjEnV2.set('Value', 'off')
                SpeedSensorFInjEnV6.set('Value', 'off')
                DistanceSensorFInjEnV6.set('Value', 'off')
            end
   end
end
            
            

