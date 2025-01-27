#!/usr/bin/env nextflow

// Define parameters
params.base_dir = "${workflow.projectDir}"
params.script = "${params.base_dir}/mantis_ml/modules/main/__main__.py"

params.python = "env python"
params.iter = 10
params.runname = "example_out"
params.threads_per_job =38// Number of threads per Mantis job 38
params.max_parallel = 5     // Number of parallel Mantis processes


phenotypes = Channel.fromList([
    'asd_monoallelic',

])
process runMantis {
    maxForks params.max_parallel
    cpus params.threads_per_job
    
    input:
    val phenotype
    
    output:
    path "${phenotype}_complete.txt"
    
    script:
    """
    # Create output directory
    mkdir -p ${params.base_dir}/Mantis_Out/${phenotype}_${params.runname}_${params.iter}_iter_custom

    # Run Mantis
    ${params.python} ${params.script} \
        -n ${params.threads_per_job} \
        -i ${params.iter} \
        -m xgb \
        -o ${params.base_dir}/Mantis_Out/${phenotype}_${params.runname}_${params.iter}_iter_custom \
        -c ${params.base_dir}/mantis_ml/conf/${phenotype}_config.yaml \
        -k ${params.base_dir}/Input_Files/${phenotype}.tsv

    # Create completion marker
    touch ${phenotype}_complete.txt
    """
}

workflow {
    // Run the process
    runMantis(phenotypes)
}
