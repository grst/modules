#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SAMTOOLS_SORT } from '../../../../software/samtools/sort/main.nf' addParams( options: [:] )

workflow test_samtools_sort  {
    input = [ [ id:'test', single_end:false ], // meta map
              file("${launchDir}/tests/data/genomics/sarscov2/illumina/bam/test_paired_end.bam", checkIfExists: true) 
            ]

    SAMTOOLS_SORT ( input )
}
