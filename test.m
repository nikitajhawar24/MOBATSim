x = [46,47,84,27,54,64,58,57,4,63];
prepare_simulator(x)
options.startingPoints = x;
sim('MOBATSim_fault_free.slx', 80);