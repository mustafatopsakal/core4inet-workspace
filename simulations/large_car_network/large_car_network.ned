package core4inet_workspace.simulations.large_car_network;

import core4inet.nodes.ethernet.avb_AS6802.TTEAVBEtherHost;
import core4inet.nodes.ethernet.avb_AS6802.CorruptedTTEAVBEtherHost;


network large_car_network
{
    @display("bgb=2165.4224,937.8787");
    types:
        channel cable extends ned.DatarateChannel
        {
            datarate = 1000Mbps;
            delay = 0;
        }

    submodules:
        Switch1: Switch1 {
            @display("p=460.99124,61.81875");
            gates:
                ethg[4];
        }
        Switch2: Switch2 {
            @display("p=1004.9962,363.84747");
            gates:
                ethg[4];
        }

        Switch3: Switch3 {
            @display("p=1651.4437,61.81875");

            gates:
                ethg[4];
        }

        FrontLeftSwitch: FrontLeftSwitch {
            @display("p=460.99124,340.88623");
            gates:
                ethg[6];
        }

        FrontRightSwitch: FrontRightSwitch {
            @display("p=1004.9962,498.0825");
            gates:
                ethg[8];
        }

        RearSwitch: RearSwitch {
            @display("p=1672.6387,298.49625");

            gates:
                ethg[6];
        }

        EndSwitch1: EndSwitch1 {
            @display("p=460.99124,498.0825");

            gates:
                ethg[3];
        }

        EndSwitch2: EndSwitch2 {
            @display("p=1700.8987,476.88748");

            gates:
                ethg[4];
        }

        VCC1: TTEAVBEtherHost {
            @display("p=188.98874,61.81875");
        }

        VCC2: TTEAVBEtherHost {
            @display("p=1004.9962,194.28749");
        }

        VCC3: TTEAVBEtherHost {
            @display("p=1847.4974,61.81875");

        }

        BrakeAct1: TTEAVBEtherHost {
            @display("p=257.8725,340.88623");
        }

        BrakeAct2: TTEAVBEtherHost {
            @display("p=860.1637,646.44745");
        }

        BrakeAct3: TTEAVBEtherHost {
            @display("p=1879.2899,238.44374");

        }

        WinAct1: TTEAVBEtherHost {
            @display("p=664.11,450.39374");
        }

        WinAct2: TTEAVBEtherHost {
            @display("p=1215.1799,582.8625");
        }

        WinAct3: TTEAVBEtherHost {
            @display("p=1494.2474,385.04248");

        }

        Cam1: TTEAVBEtherHost {
            @display("p=574.03125,646.44745");
        }

        Cam2: TTEAVBEtherHost {
            @display("p=831.90375,529.875");
        }

        Cam3: TTEAVBEtherHost {
            @display("p=1720.3274,582.8625");

        }

        Cam4: TTEAVBEtherHost {
            @display("p=1893.4199,582.8625");
        }

        Radar1: TTEAVBEtherHost {
            @display("p=849.5662,397.40625");
        }

        Radar2: TTEAVBEtherHost {
            @display("p=1520.7412,582.8625");
        }

        Video: TTEAVBEtherHost {
            @display("p=1118.0363,646.44745");
        }

        Lidar: TTEAVBEtherHost {
            @display("p=339.12,646.44745");

        }

        FLC: TTEAVBEtherHost {
            @display("p=664.11,340.88623");
        }

        FRC: TTEAVBEtherHost {
            @display("p=1215.1799,420.3675");
        }

        RC: TTEAVBEtherHost {
            @display("p=1494.2474,282.59998");
        }

        Audio1: TTEAVBEtherHost {
            @display("p=206.65125,450.39374");
        }

        Audio2: TTEAVBEtherHost {
            @display("p=1004.9962,646.44745");
        }

        Audio3: TTEAVBEtherHost {
            @display("p=1847.4974,397.40625");
        }


    connections:

        Switch1.ethg[0] <--> cable <--> Switch2.ethg[0];
        Switch1.ethg[1] <--> cable <--> Switch3.ethg[0];
        Switch1.ethg[2] <--> cable <--> FrontLeftSwitch.ethg[0];
        FrontLeftSwitch.ethg[1] <--> cable <--> EndSwitch1.ethg[0];
        
        Switch2.ethg[1] <--> cable <--> Switch3.ethg[1];
        Switch2.ethg[2] <--> cable <--> FrontRightSwitch.ethg[0];
        
        Switch3.ethg[2] <--> cable <--> RearSwitch.ethg[0];    
        RearSwitch.ethg[1] <--> cable <--> EndSwitch2.ethg[0];
                
        VCC1.ethg <--> cable <--> Switch1.ethg[3];     
        VCC2.ethg <--> cable <--> Switch2.ethg[3];
        VCC3.ethg  <--> cable <--> Switch3.ethg[3];

        BrakeAct1.ethg <--> cable <--> FrontLeftSwitch.ethg[2];
        Audio1.ethg <--> cable <--> FrontLeftSwitch.ethg[3];
        WinAct1.ethg <--> cable <--> FrontLeftSwitch.ethg[4]; 
        FLC.ethg <--> cable <--> FrontLeftSwitch.ethg[5];

        Lidar.ethg <--> cable <--> EndSwitch1.ethg[1];
        Cam1.ethg <--> cable <--> EndSwitch1.ethg[2];

        Radar1.ethg <--> cable <--> FrontRightSwitch.ethg[1];
        Cam2.ethg <--> cable <--> FrontRightSwitch.ethg[2];
        BrakeAct2.ethg <--> cable <--> FrontRightSwitch.ethg[3];
        Audio2.ethg <--> cable <--> FrontRightSwitch.ethg[4];
        Video.ethg <--> cable <--> FrontRightSwitch.ethg[5];
        WinAct2.ethg <--> cable <--> FrontRightSwitch.ethg[6];
        FRC.ethg <--> cable <--> FrontRightSwitch.ethg[7];

        RC.ethg <--> cable <--> RearSwitch.ethg[2];
        WinAct3.ethg <--> cable <--> RearSwitch.ethg[3];
        Audio3.ethg <--> cable <--> RearSwitch.ethg[4];
        BrakeAct3.ethg <--> cable <--> RearSwitch.ethg[5];

        Radar2.ethg <--> cable <--> EndSwitch2.ethg[1];
        Cam3.ethg <--> cable <--> EndSwitch2.ethg[2];
        Cam4.ethg <--> cable <--> EndSwitch2.ethg[3];
}