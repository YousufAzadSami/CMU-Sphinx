#!/bin/bash
#path = 
shopt -s nullglob
output=""
i=0
for f in *.wav; do
	output="$output$i. $f\t-\t"
#	output="$output$(./hello_ps $f)\t"
	output="$output$(pocketsphinx_continuous -infile $f -hmm  model/en-us/en-us \
							-allphone model/en-us/en-us-phone.lm.bin  -backtrace yes \
							-beam 1e-20 -pbeam 1e-20 -lw 2.0)\n"
	i=$(expr $i + 1)
done
echo -e $output > output.txt

# echo -e $output >> output.txt
#to append in file