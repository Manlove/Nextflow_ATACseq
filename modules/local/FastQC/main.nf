#!/usr/bin/env nextflow

/*
 * Call variants with GATK HaplotypeCaller
 */

params.outdir = "results"

process runFastQC {

    container "community.wave.seqera.io/library/fastqc:0.12.1--af7a5314d5015c29"
    publishDir "$params.outdir/QC", mode: 'copy'
    input:
	path input_fastq

    output:
	path "*.txt"
	path "*.html"

    script:
    """
    touch out.txt
    touch out.html
    #echo $input_fastq
    #fastqc $input_fastq
    """
}
