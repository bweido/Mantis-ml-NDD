#!/bin/bash
#SBATCH -o asd_monoallelic.out
#SBATCH --cpus-per-task=10
#SBATCH --mem-per-cpu=4G
#SBATCH --time=24:0:0


# Various Test runs
iterations=10

#mantisml -c ../../conf/asd_monoallelic.yaml -o Inher_ASD-monoallelic -k BCM-seed-genes/Inheritance_strat_Seed_genes/asd_monoallelic.tsv -m rf,xgb -n 10 -i $iterations
python -u __main__.py -c ../../conf/asd_monoallelic.yaml -o Inher_ASD-monoallelic -k BCM-seed-genes/Inheritance_strat_Seed_genes/asd_monoallelic.tsv -m rf,xgb -n 10 -i $iterations
