include { runFastQC } from './modules/local/FastQC/main.nf'
params.fastq_path = "/Users/logan/Documents/atac-seq_nextflow/SRR29299757_chr22_chr22_1.fastq.gz"
params.outdir    = "results_genomics"

workflow {
	fastq_files = Channel.fromPath("/Users/logan/Documents/atac-seq_nextflow/SRR29299757_chr22_chr22_1.fastq.gz").view{"$it"}
	runFastQC(fastq_files)
}
