#!/usr/bin/env nextflow

reads_ch = Channel.fromFilePairs('data/ggal/*_{1,2}.fq')

process FOO {
    publishDir "results", pattern: "*.bam"

    input:
    tuple val(sample_id), path(sample_id_paths)

    output:
    tuple val(sample_id), path("*.bam"), emit:bam
    tuple val(sample_id), path("*.bai"), emit:bai

    script:
    """
    echo your_command_here --sample $sample_id_paths > ${sample_id}.bam
    echo your_command_here --sample $sample_id_paths > ${sample_id}.bai
    """
}

workflow {
    result=FOO(reads_ch)
    result.bai.view()
    result.bam.view()
}       