# CTP7-HLS

Some basic info is in this old post: [CTP7INFO](CTP7INFO.md)

# Recipe

##  Clone the package
```
git clone git@github.com:APxL1TAlgoDev/ctp7_hls_proj
cd ctp7_hls_proj
```

## Create the HLS project
```
git clone git@github.com:p2l1pfp/GlobalCorrelator_HLS
cd GlobalCorrelator_HLS
vivado_hls -f run_hls_fullpfalgo_ctp7.tcl
cd ..
```

## Create the bit file
```
# one needs to modify the top file, but it's already done for pf algo (ctp7_hls_demo.srcs/sources_1/new/ctp7_top.vhd)
# note pfProjDir is set to the HLS project directory
vivado -mode batch -source build_project.tcl
cd ../..
```
Now you have bit file!  The paths to the bit file and input txt files
```
#path to bit file
ls ctp7_hls_pf/ctp7_hls_pf.runs/impl_1/ctp7_top.bit
#path to input text file
ls GlobalCorrelator_HLS/proj3-ctp7-full/solution/csim/build/ctp7*
```

## Run on `correlator1`
This recipe is running on `eagle38`, but `eagle41` also works.
Copy the bit file to `eagle38` (the Zynq), then load the ctp7 bit file onto the Virtex-7
```
scp ctp7_hls_pf/ctp7_hls_pf.runs/impl_1/ctp7_top.bit uwguest@eagle38:/tmp/.
ssh uwguest@eagle38
uwhep@eagle38:~$ v7load /tmp/ctp7_top.bit
Bitstream read in 0.910 seconds
...........................
Bitstream downloaded in 3.991 seconds
Virtex 7 bitstream programmed successfully in 4.902 seconds.
Initializing AXI Chip2Chip link
uwhep@eagle38:~$ exit
```

## Check out the client software and compile
```
cd ..
git clone git@github.com:APxL1TAlgoDev/ctp7_hls_clientsw
cd ctp7_hls_clientsw
make
export LD_LIBRARY_PATH=${PWD}:${PWD}/rpcsvc_client_dev
```

## Upload the input text file to `eagle38` and run.  Then download the outputs and compare to expected output! 
```
mkdir pftest
# copy over the input text file, have to change the name
cp ../ctp7_hls_proj/GlobalCorrelator_HLS/proj3-ctp7-full/solution/csim/build/ctp7_input_patterns_nomux.txt pftest/input_link_data.txt
./upload_inputs 0 pftest
./download_outputs 0 pftest
# then compare pftest/output_link_data.txt against ../../GlobalCorrelator_HLS/proj3-ctp7-full/solution/csim/build/ctp7_output_patterns_nomux.txt
python compareOutputs.py  pftest/output_link_data.txt  ../../GlobalCorrelator_HLS/proj3-ctp7-full/solution/csim/build/ctp7_output_patterns_nomux.txt
```
