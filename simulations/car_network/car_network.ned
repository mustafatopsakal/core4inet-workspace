package core4inet_workspace.simulations.car_network;

import core4inet.nodes.ethernet.avb_AS6802.TTEAVBEtherHost;
import core4inet.nodes.ethernet.avb_AS6802.CorruptedTTEAVBEtherHost;
import core4inet.nodes.ethernet.avb_AS6802.TTEAVBFilterEtherSwitch;

network car_network
{
    types:
        channel cable extends ned.DatarateChannel
        {
            datarate = 1000Mbps;
        }

    submodules:
        SW1: Switch1 {
            @display("p=228,200");
            gates:
                ethg[6];
        }
        SW2: Switch2 {
            @display("p=364,200");
            gates:
                ethg[6];
        }

        DA_Cam: TTEAVBEtherHost {
            @display("p=130,250");
        }
        
        HU: TTEAVBEtherHost {
            @display("p=130,150");
        }
     
        Cam1: TTEAVBEtherHost {
            @display("p=40,200");
        }
        
        Cam2: TTEAVBEtherHost {
            @display("p=130,350");
        }
        
        Cam3: TTEAVBEtherHost {
            @display("p=130,50");
        }
        
        Cam4: TTEAVBEtherHost {
            @display("p=502,200");
        }
        
        RSE: TTEAVBEtherHost {
            @display("p=300,150");
        }
        
        Telematics: TTEAVBEtherHost {
            @display("p=300,250");
        }
        
        CD_DVD: TTEAVBEtherHost {
            @display("p=400,100");
        }
        
        CU: CorruptedTTEAVBEtherHost {
            @display("p=400,300");
        }
        
    connections:
        SW1.ethg[0] <--> cable <--> SW2.ethg[0];

        DA_Cam.ethg <--> cable <--> SW1.ethg[1];
        HU.ethg <--> cable <--> SW1.ethg[2];
        Cam1.ethg <--> cable <--> SW1.ethg[3];
        Cam2.ethg <--> cable <--> SW1.ethg[4];
        Cam3.ethg <--> cable <--> SW1.ethg[5];
       
        Cam4.ethg <--> cable <--> SW2.ethg[1];
        RSE.ethg <--> cable <--> SW2.ethg[2];
        Telematics.ethg <--> cable <--> SW2.ethg[3];
        CD_DVD.ethg <--> cable <--> SW2.ethg[4];
        CU.ethg <--> cable <--> SW2.ethg[5];
        
 }