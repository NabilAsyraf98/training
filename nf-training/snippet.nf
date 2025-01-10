#!/usr/bin/env nextflow

ch1 = Channel.of(1, 2, 3)
ch2 = Channel.of(1)

list = ['hello', 'world']

Channel
    .fromFilePairs('./data/ggal/*_{1,2}.fq', flat: false)
    .view()


process SUM {
    input:
    val x
    val y

    output:
    stdout

    script:
    """
    echo \$(($x+$y))
    """
}

workflow {
    SUM(ch1, ch2.first()).view()
}

