PACKAGES := sra-toolkit cutadapt bwa samtools igv
TOOLS := /usr/bin/fastq-dump
# these are the sequences ChatGPT gave Kevin McKernan:
R1 := AAGTCGGAGGCCAAGCGGTTCAGCAGGAATGCCGAGACCGAGT
R2 := AAGTCGGAGGCCAAGCGGTTTCAGCAGGAATGCCGAGACCGAGT
# and these are what it gave me:
P7 := AGATCGGAAGAGCACACGTCTGAACTCCAGTCA
P5 := AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT
SRR18534011_1.fastq: | /usr/bin/fastq-dump
	$| --split-files SRR18534011
$(TOOLS): $(PACKAGES)
$(PACKAGES):
	sudo apt install $@
