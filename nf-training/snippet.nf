#!/usr/bin/env nextflow

reads_ch = Channel
                .fromPath("data/meta/regions.tsv", checkIfExists: true)
                // use `sep` option to parse TAB separated files
                .splitCsv(sep: '\t', header: true)
                .view(row -> "${row.patient_id}")

workflow {
    
}       