#!/usr/bin/env nextflow
greeting = "Hello world!"

process FOO {
    input:
    val x

    output:
    val x

    script:
    """
    echo $x > file
    """
}

workflow {
    FOO(Channel.of(greeting))
        .view()
}