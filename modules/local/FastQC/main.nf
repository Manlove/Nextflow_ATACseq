#!/usr/bin/env nextflow

/*
 * Call variants with GATK HaplotypeCaller
 */

process runFastQC {

    container "community.wave.seqera.io/library/fastqc:0.12.1--af7a5314d5015c29"

    input:
	path input_fastq

    output:
	path *.txt
	path *.html

    script:
    """
    echo $input_fastq
    fastqc $input_fastq
    """
}
