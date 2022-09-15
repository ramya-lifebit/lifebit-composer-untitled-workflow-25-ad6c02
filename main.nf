nextflow.enable.dsl=2

include { download_reads_1 } from './modules/download_reads_1/module.nf'

workflow {
input1 = Channel.fromPath(params.accessions).splitCsv()
download_reads_1(input1)
}
