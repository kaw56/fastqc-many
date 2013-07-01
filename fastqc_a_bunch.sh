#!bin/bash
# similar set up to the unzip one

# a list of directories to look in for
MY_DIRECTORIES="*"

for i in $MY_DIRECTORIES
    do
        # check if there are .fastq files in the folder.
        count=`ls -1 $i/*.fastq 2>/dev/null | wc -l`
        if [ $count != 0 ]
        then
            # run fastqc
            fastqc --noextract $i/*.fastq
        else
            echo ".fastq files not found in $i"
        fi
done