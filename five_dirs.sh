#!/bin/bash
rm -r five
mkdir ~/five
for loop in `seq 5`
do
	mkdir ~/five/five$loop
	for filenum in `seq 4`
	do 
		touch ~/five/five$loop/file$filenum
		i=1
		while(( $i<=$filenum))
		do
			echo $filenum >> ~/five/five$loop/file$filenum
			let "i++"
		done
	done
done 