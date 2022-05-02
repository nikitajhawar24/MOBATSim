%path to store final faulty and fault-free mat data files 
finalDataMatFiles = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\';

%path where driving scenario data files are located
parentDir = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim';

%path to store scalogram images for the fault-free case
%outDirFaultFree = 'C:\Users\deepi\OneDrive\Documents\MATLAB\final_Dataset\final_submission\scalogram\fault_free\';

%path to store scalogram images for the noise fault case
outDirNoise = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\scalogram\noise\';

%path to store scalogram images for the stuckat fault case
outDirStuckAt = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\scalogram\stuckat';

%path to store scalogram images for the offset fault case
outDirOffset = 'C:\Users\INT004435\OneDrive - TeamViewer\Documents\GitHub\MOBATSim\final_dataset\scalogram\offset';

scenarioName = ['Urban city Traffic'];
%city 
InitialPosV1 = "46";
InitialPosV2 = "47";
InitialPosV3 = "84";
InitialPosV4 = "3";
InitialPosV5 = "54";
InitialPosV6 = "64";
InitialPosV7 = "58";
InitialPosV8 = "57";
InitialPosV9 = "4";
InitialPosV10 = "63";
InitialSpeedV1 = "3";
InitialSpeedV2 = "18";
InitialSpeedV3 = "3";
InitialSpeedV4 = "7";
InitialSpeedV5 = "14";
InitialSpeedV6 = "10";
InitialSpeedV7 = "0.1";
InitialSpeedV8 = "4";
InitialSpeedV9 = "10";
InitialSpeedV10 = "10";


%highWayInitialPosV1 = ["50", "60", "70"];
%highWayInitialPosv2 = "0";
%highWayInitialSpeedV1 = ["12.5", "14"];
%highWayInitialSpeedV2 = ["12.5", "14"];

%getting the block parameters of vehicle 1, vehicle 2 and FI block
% blockParamVehicle1 = Simulink.Mask.get('MOBATSim/Vehicle Model 1');
% blockParamVehicle2 = Simulink.Mask.get('MOBATSim/Vehicle Model 2');
% blockParamVehicle3 = Simulink.Mask.get('MOBATSim/Vehicle Model 3');
% blockParamVehicle4 = Simulink.Mask.get('MOBATSim/Vehicle Model 4');
% blockParamVehicle5 = Simulink.Mask.get('MOBATSim/Vehicle Model 5');
% blockParamVehicle6 = Simulink.Mask.get('MOBATSim/Vehicle Model 6');
% blockParamVehicle7 = Simulink.Mask.get('MOBATSim/Vehicle Model 7');
% blockParamVehicle8 = Simulink.Mask.get('MOBATSim/Vehicle Model 8');
% blockParamVehicle9 = Simulink.Mask.get('MOBATSim/Vehicle Model 9');
% blockParamVehicle10 = Simulink.Mask.get('MOBATSim/Vehicle Model 10');
blockParamFaultInjecV2 = Simulink.Mask.get('MOBATSim/Vehicle Model 2/FIBlock2');
blockParamFaultInjec1V2 = Simulink.Mask.get('MOBATSim/Vehicle Model 2/FIBlock1');
blockParamFaultInjecV6 = Simulink.Mask.get('MOBATSim/Vehicle Model 6/FIBlock');
blockParamFaultInjec1V6 = Simulink.Mask.get('MOBATSim/Vehicle Model 6/FIBlock1');

% posV1 = blockParamVehicle1.Parameters(1);
% speedV1 = blockParamVehicle1.Parameters(1);
% 
% posV2 = blockParamVehicle2.Parameters(1);
% speedV2 = blockParamVehicle2.Parameters(2);
% 
% posV3 = blockParamVehicle3.Parameters(1);
% speedV3 = blockParamVehicle3.Parameters(2);
% 
% posV4 = blockParamVehicle4.Parameters(1);
% speedV4 = blockParamVehicle4.Parameters(2);
% 
% posV5 = blockParamVehicle5.Parameters(1);
% speedV5 = blockParamVehicle5.Parameters(2);
% 
% posV6 = blockParamVehicle6.Parameters(1);
% speedV6 = blockParamVehicle6.Parameters(2);
% 
% posV7 = blockParamVehicle7.Parameters(1);
% speedV7 = blockParamVehicle7.Parameters(2);
% 
% posV8 = blockParamVehicle8.Parameters(1);
% speedV8 = blockParamVehicle8.Parameters(2);
% 
% posV9 = blockParamVehicle9.Parameters(1);
% speedV9 = blockParamVehicle9.Parameters(2);
% 
% posV10 = blockParamVehicle10.Parameters(1);
% speedV10 = blockParamVehicle10.Parameters(2);

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

% posV1.set('Value', InitialPosV1);
% posV2.set('Value', InitialPosV2);
% posV3.set('Value', InitialPosV3);
% posV4.set('Value', InitialPosV4);
% posV5.set('Value', InitialPosV5);
% posV6.set('Value', InitialPosV6);
% posV7.set('Value', InitialPosV7);
% posV8.set('Value', InitialPosV8);
% posV9.set('Value', InitialPosV9);
% posV10.set('Value', InitialPosV10);
SpeedSensorFInjEnV2.set('Value', 'off');
DistanceSensorFInjEnV2.set('Value', 'off');
SpeedSensorFInjEnV6.set('Value', 'off');
DistanceSensorFInjEnV6.set('Value', 'off');

PulseWidth = 3; 
PhaseDelay = 0;
faultDuration = [0.6, 1.2, 1.8, 2.4, 3, 3.6, 4.2, 5];

%for i = 1:length(townInitialPosV1)
%   posV1.set('Value', townInitialPosV1(i));
%    for j = 1:length(townInitialSpeedV2)
%        speedV2.set('Value', townInitialSpeedV2(j));
%        for k = 1:length(townInitialSpeedV1)
%            speedV1.set('Value', townInitialSpeedV1(k));
            fname = strcat("Urban City Traffic_", InitialPosV1, "_",...
                            InitialPosV2, "_", InitialPosV3, "_", InitialPosV4, "_",...
                            InitialPosV5, "_",InitialPosV6, "_",InitialPosV7, "_",...
                            InitialPosV8, "_",InitialPosV9, "_",InitialPosV10, "_",...
                            replace(InitialSpeedV1, ".", "_"), replace(InitialSpeedV2, ".", "_"),...
                            replace(InitialSpeedV3, ".", "_"),replace(InitialSpeedV4, ".", "_"),...
                            replace(InitialSpeedV5, ".", "_"), replace(InitialSpeedV6, ".", "_"),...
                            replace(InitialSpeedV7, ".", "_"), replace(InitialSpeedV8, ".", "_"),...
                            replace(InitialSpeedV9, ".", "_"), replace(InitialSpeedV10, ".", "_"),...
                            "_sample",string(1));
%            
            fName = strcat(parentDir, fname);
            
            %loading a scenario and just saving as it as fault-free file
            %vehicleScenario = load(fName);
            %accelerationCommand = vehicleScenario.c;
            %b = sim('mobatSimAV_withFIBlock.slx', 80);
            %output = b.get('AVSOutput');
            %newfname = strcat(fname, "_fault_free");
            %extractFeatures(output, outDirFaultFree, newfname) 
            %save(strcat(finalDataMatFiles, newfname), 'output','-v7.3');
            
            %iterating through the fault durations
            for n = 1:length(faultDuration)
                
                %setting the pulse width equal to fault duration
                PulseWidth = faultDuration(n);
                
                %setting up the FI block for injecting stuck-at fault
                SpeedSensorFInjEnV2.set('Value', 'on');
                SpeedSensorFaultTypeV2.set('Value', 'Stuck-at');
                SpeedSensorFaultEventV2.set('Value', 'Deterministic');
                SpeedSensorEventValueV2.set('Value', string(PhaseDelay));
                SpeedSensorFaultEffectV2.set('Value', 'Constant time');
                SpeedSensorEffectValueV2.set('Value', string(faultDuration(n)));
                
%                 DistanceSensorFInjEnV2.set('Value', 'on');
%                 DistanceSensorFaultTypeV2.set('Value', 'Stuck-at');
%                 DistanceSensorFaultEventV2.set('Value', 'Deterministic');
%                 DistanceSensorEventValueV2.set('Value', string(PhaseDelay));
%                 DistanceSensorFaultEffectV2.set('Value', 'Constant time');
%                 DistanceSensorEffectValueV2.set('Value', string(faultDuration(n)));
%                 
%                 SpeedSensorFInjEnV6.set('Value', 'on');
%                 SpeedSensorFaultTypeV6.set('Value', 'Stuck-at');
%                 SpeedSensorFaultEventV6.set('Value', 'Deterministic');
%                 SpeedSensorEventValueV6.set('Value', string(PhaseDelay));
%                 SpeedSensorFaultEffectV6.set('Value', 'Constant time');
%                 SpeedSensorEffectValueV6.set('Value', string(faultDuration(n)));
%                 
%                 DistanceSensorFInjEnV2.set('Value', 'on');
%                 DistanceSensorFaultTypeV2.set('Value', 'Stuck-at');
%                 DistanceSensorFaultEventV2.set('Value', 'Deterministic');
%                 DistanceSensorEventValueV2.set('Value', string(PhaseDelay));
%                 DistanceSensorFaultEffectV2.set('Value', 'Constant time');
%                 DistanceSensorEffectValueV2.set('Value', string(faultDuration(n)));
%                 
                
                %running the simulation
                %extacting the scalogram images out of the data
                %saving the mat file 
                b = sim('MOBATSim.slx', 80);
                output = b.get('MOBATSimOutput');
                newfname = strcat(fname, "_StuckAt_", string(n));
               
                extractFeatures(output, outDirStuckAt, newfname);
                
                save(strcat(finalDataMatFiles, newfname), 'output','-v7.3');
                
                %setting up the FI block for injecting noise fault
                SpeedSensorFaultTypeV2.set('Value', 'Noise');
                SpeedSensorFaultValueV2.set('Value', '20');
                SpeedSensorFaultEventV2.set('Value', 'Deterministic');
                SpeedSensorEventValueV2.set('Value', string(PhaseDelay));
                SpeedSensorFaultEffectV2.set('Value', 'Constant time');
                SpeedSensorEffectValueV2.set('Value', string(faultDuration(n)));
                
%                 DistanceSensorFaultTypeV2.set('Value', 'Noise');
%                 DistanceSensorFaultValueV2.set('Value', '20');
%                 DistanceSensorFaultEventV2.set('Value', 'Deterministic');
%                 DistanceSensorEventValueV2.set('Value', string(PhaseDelay));
%                 DistanceSensorFaultEffectV2.set('Value', 'Constant time');
%                 DistanceSensorEffectValueV2.set('Value', string(faultDuration(n)));
%                 
%                 SpeedSensorFaultTypeV6.set('Value', 'Noise');
%                 SpeedSensorFaultValueV6.set('Value', '20');
%                 SpeedSensorFaultEventV6.set('Value', 'Deterministic');
%                 SpeedSensorEventValueV6.set('Value', string(PhaseDelay));
%                 SpeedSensorFaultEffectV6.set('Value', 'Constant time');
%                 SpeedSensorEffectValueV6.set('Value', string(faultDuration(n)));
%                 
%                 DistanceSensorFaultTypeV6.set('Value', 'Noise');
%                 DistanceSensorFaultValueV6.set('Value', '20');
%                 DistanceSensorFaultEventV6.set('Value', 'Deterministic');
%                 DistanceSensorEventValueV6.set('Value', string(PhaseDelay));
%                 DistanceSensorFaultEffectV6.set('Value', 'Constant time');
%                 DistanceSensorEffectValueV6.set('Value', string(faultDuration(n)));
%                 
%                 %running the simulation
%                 %extacting the scalogram images out of the data
%                 %saving the mat file 
                b = mun2cell(sim('MOBATSim.slx', 80));
                output = b.get('MOBATSimOutput');
                newfname = strcat(fname, "_Noise_", string(n));
                extractFeatures(output, outDirNoise, newfname);
                save(strcat(finalDataMatFiles, newfname), 'output','-v7.3');
%                 
%                 %setting up the FI block for injecting offset fault
%                 SpeedSensorFaultTypeV2.set('Value', 'Bias/Offset');
%                 SpeedSensorFaultValueV2.set('Value', '5');
%                 SpeedSensorFaultEventV2.set('Value', 'Deterministic');
%                 SpeedSensorEventValueV2.set('Value', string(PhaseDelay));
%                 SpeedSensorFaultEffectV2.set('Value', 'Constant time');
%                 SpeedSensorEffectValueV2.set('Value', string(faultDuration(n)));
%                 
%                 DistanceSensorFaultTypeV2.set('Value', 'Bias/Offset');
%                 DistanceSensorFaultValueV2.set('Value', '5');
%                 DistanceSensorFaultEventV2.set('Value', 'Deterministic');
%                 DistanceSensorEventValueV2.set('Value', string(PhaseDelay));
%                 DistanceSensorFaultEffectV2.set('Value', 'Constant time');
%                 DistanceSensorEffectValueV2.set('Value', string(faultDuration(n)));
%                 
%                 SpeedSensorFaultTypeV6.set('Value', 'Bias/Offset');
%                 SpeedSensorFaultValueV6.set('Value', '5');
%                 SpeedSensorFaultEventV6.set('Value', 'Deterministic');
%                 SpeedSensorEventValueV6.set('Value', string(PhaseDelay));
%                 SpeedSensorFaultEffectV6.set('Value', 'Constant time');
%                 SpeedSensorEffectValueV6.set('Value', string(faultDuration(n)));
%                 
%                 DistanceSensorFaultTypeV6.set('Value', 'Bias/Offset');
%                 DistanceSensorFaultValueV6.set('Value', '5');
%                 DistanceSensorFaultEventV6.set('Value', 'Deterministic');
%                 DistanceSensorEventValueV6.set('Value', string(PhaseDelay));
%                 DistanceSensorFaultEffectV6.set('Value', 'Constant time');
%                 DistanceSensorEffectValueV6.set('Value', string(faultDuration(n)));
                
                %running the simulation
                %extacting the scalogram images out of the data
                %saving the mat file 
                b = num2cell(sim('MOBATSim.slx', 80));
                output = b.get('MOBATSimOutput');
                newfname = strcat(fname, "_Offset_", string(n));
                extractFeatures(output, outDirOffset, newfname);
                save(strcat(finalDataMatFiles, newfname), 'output','-v7.3');
                
                %disabling the fault injection block
                SpeedSensorFInjEnV2.set('Value', 'off')
%                 DistanceSensorFInjEnV2.set('Value', 'off')
%                 SpeedSensorFInjEnV6.set('Value', 'off')
%                 DistanceSensorFInjEnV6.set('Value', 'off')
            end
            
            

