package core4inet_workspace.simulations.industrial_network;

import core4inet.nodes.ethernet.avb_AS6802.TTEAVBEtherHost;
import core4inet.nodes.ethernet.avb_AS6802.CorruptedTTEAVBEtherHost;


network industrial_network
{
    @display("bgb=1068,514");
    types:
        channel cable extends ned.DatarateChannel
        {
            datarate = 1000Mbps;
        }

    submodules:
        Switch1: Switch1 {
            @display("p=200,200");
            gates:
                ethg[2];
        }
        Switch2: Switch2 {
            @display("p=300,200");
            gates:
                ethg[4];
        }

        Switch3: Switch3 {
            @display("p=400,200");
            gates:
                ethg[3];
        }

        Switch4: Switch4 {
            @display("p=500,200");
            gates:
                ethg[3];
        }

        Switch5: Switch5 {
            @display("p=600,200");
            gates:
                ethg[3];
        }

        Switch6: Switch6 {
            @display("p=700,200");
            gates:
                ethg[3];
        }


        N1: TTEAVBEtherHost {
            @display("p=100,200");
        }

        N2: TTEAVBEtherHost {
            @display("p=300,300");
        }

        N3: TTEAVBEtherHost {
            @display("p=300,100");
        }

        N4: TTEAVBEtherHost {
            @display("p=400,100");
        }

        N5: TTEAVBEtherHost {
            @display("p=500,300");
        }

        N6: TTEAVBEtherHost {
            @display("p=700,300");
        }

        N7: TTEAVBEtherHost {
            @display("p=600,100");
        }

        N8: TTEAVBEtherHost {
            @display("p=800,200");
        }



    connections:
        Switch1.ethg[0] <--> cable <--> Switch2.ethg[0];
        Switch2.ethg[1] <--> cable <--> Switch3.ethg[0];
        Switch3.ethg[1] <--> cable <--> Switch4.ethg[0];
        Switch4.ethg[1] <--> cable <--> Switch5.ethg[0];
        Switch5.ethg[1] <--> cable <--> Switch6.ethg[0];

        N1.ethg <--> cable <--> Switch1.ethg[1];
        N2.ethg <--> cable <--> Switch2.ethg[2];
        N3.ethg <--> cable <--> Switch2.ethg[3];
        N4.ethg <--> cable <--> Switch3.ethg[2];
        N5.ethg <--> cable <--> Switch4.ethg[2];
        N6.ethg <--> cable <--> Switch6.ethg[1];
        N7.ethg <--> cable <--> Switch5.ethg[2];
        N8.ethg <--> cable <--> Switch6.ethg[2];

}