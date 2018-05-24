# References:
https://twiki.cern.ch/twiki/bin/viewauth/CMS/L1TriggerPhase2HLSProjects
https://github.com/SridharaDasu/VivadoHLSProjects

`/afs/cern.ch/user/a/asvetek/public/hls_ventures`

# Essentials:
67 input links (32-bit words) 
48 output links (32-bit words)
Running 10Gbs links and Aurora 8/10b, this comes out to 6 32-bit words per 25ns, so practically we are allowed 32x6 bits per link per event

The BRAM address depth is 1024 32-bit words, so this corresponds to ~170 words in a BRAM (or input text file)

# Part number
same as Pulsar! 
`xc7vx690tffg1927-2`

# Interfacing with firmware infrastructure
A user HLS project in imported as an IP into the Vivado project in `hls_ventures/ctp7_vivado/ctp7_hls_demo.xpr.zip`
This is similar to MP7 and the simple Pulsar examples.  

Once you unzip the file, you can open the project in vivado and import your HLS IP in the usual way (via the GUI). 

Your HLS module can be linked to the infrastructure firmware via modification of the file: 
`ctp7_hls_demo/ctp7_hls_demo.srcs/sources_1/new/ctp7_top.vhd`

You need to modify 2 blocks of code (L192 and L412) which are denoted by the comments "Begin/End User Code".  There you define ports and signals to your HLS IP.  

n.b. do not remove the clock, etc. signals, just the input, output, and configuration signals

interesting note: infrastructure firmware takes up very few resources, except for BRAMs of which it takes up about 10%

# Communicating to the CTP7 board
All communication with the CTP7 board is done through the ZYNQ 
I'm not sure where to find the ZYNQ code at the moment.  But in `hls_ventures/ctp7_hls_client_sw` you have some examples of commands that you can run to communicate with the ZYNQ, e.g. giving it text input files, etc.  

still need to learn more here, but not much may happen until we set up the microTCA crate at FNAL
