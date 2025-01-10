#!/usr/bin/env nextflow

Channel
	.fromPath('.data/ggal/**.fq', hidden: true)
	.view()
Channel
	.fromFilePairs('.data/ggal/**.fq', flat: true)
	.view()
