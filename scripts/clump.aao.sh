#!/bin/bash
#
#SBATCH --time=00:15:00																		# h_rt=[max time, e.g. 02:02:01] - this is the time you think the script will take
#SBATCH --mem=16G  																			#  h_vmem=[max. mem, e.g. 45G] - this is the amount of memory you think your script will use
#SBATCH --mail-user=s.w.vanderlaan-2@umcutrecht.nl 											# you can send yourself emails when the job is done; "-M" and "-m" go hand in hand
#SBATCH --mail-type=FAIL																	# you can choose: b=begin of job; e=end of job; a=abort of job; s=suspended job; n=no mail is send

#
### INTERACTIVE SHELLS
# You can also schedule an interactive shell, e.g.:
#
# qlogin -N "basic_bash_script" -l h_rt=02:00:00 -l h_vmem=24G -M s.w.vanderlaan-2@umcutrecht.nl -m ea
#
# You can use the variables above (indicated by "#$") to set some things for the submission system.
# Another useful tip: you can set a job to run after another has finished. Name the job 
# with "-N SOMENAME" and hold the other job with -hold_jid SOMENAME". 
# Further instructions: https://wiki.bioinformatics.umcutrecht.nl/bin/view/HPC/HowToS#Run_a_job_after_your_other_jobs
#
# It is good practice to properly name and annotate your script for future reference for
# yourself and others. Trust me, you'll forget why and how you made this!!!

## Sex-combined analyses

plink_v1.9_6.21 --bfile /hpc/dhl_ec/data/references/1000G/Phase1/PLINK/1000Gp1v3.20101123.EUR \
--clump /hpc/dhl_ec/data/_gwas_datasets/_SiGN/sumstats_AAO/21.04.12.alleur.groupcov.stats \
--clump-field P_BOLT_LMM_INF \
--clump-p1 1e-5 --clump-p2 0.05 --clump-kb 1000 --clump-r2 0.05 --clump-best --clump-verbose \
--out AAO/OUTPUT/21.04.12.alleur.groupcov.stats

plink_v1.9_6.21 --bfile /hpc/dhl_ec/data/references/1000G/Phase1/PLINK/1000Gp1v3.20101123.EUR \
--clump /hpc/dhl_ec/data/_gwas_datasets//_SiGN/sumstats_AAO/21.04.12.alleur.groupcov.stats \
--clump-field P_BOLT_LMM_INF \
--clump-p1 5e-8 --clump-p2 0.05 --clump-kb 1000 --clump-r2 0.05 --clump-best --clump-verbose \
--out AAO/OUTPUT/21.04.12.alleur.groupcov.stats.gwaslevel

## Men-only analyses

plink_v1.9_6.21 --bfile /hpc/dhl_ec/data/references/1000G/Phase1/PLINK/1000Gp1v3.20101123.EUR \
--clump /hpc/dhl_ec/data/_gwas_datasets/_SiGN/sumstats_AAO/21.04.13.xy.eur.groupcov.stats \
--clump-field P_BOLT_LMM_INF \
--clump-p1 1e-5 --clump-p2 0.05 --clump-kb 1000 --clump-r2 0.05 --clump-best --clump-verbose \
--out AAO/OUTPUT/21.04.13.xy.eur.groupcov.stats

plink_v1.9_6.21 --bfile /hpc/dhl_ec/data/references/1000G/Phase1/PLINK/1000Gp1v3.20101123.EUR \
--clump /hpc/dhl_ec/data/_gwas_datasets/_SiGN/sumstats_AAO/21.04.13.xy.eur.groupcov.stats \
--clump-field P_BOLT_LMM_INF \
--clump-p1 5e-8 --clump-p2 0.05 --clump-kb 1000 --clump-r2 0.05 --clump-best --clump-verbose \
--out AAO/OUTPUT/21.04.13.xy.eur.groupcov.stats.gwaslevel


## Women-only analyses

plink_v1.9_6.21 --bfile /hpc/dhl_ec/data/references/1000G/Phase1/PLINK/1000Gp1v3.20101123.EUR \
--clump /hpc/dhl_ec/data/_gwas_datasets/_SiGN/sumstats_AAO/21.04.13.xx.eur.groupcov.stats \
--clump-field P_BOLT_LMM_INF \
--clump-p1 1e-5 --clump-p2 0.05 --clump-kb 1000 --clump-r2 0.05 --clump-best --clump-verbose \
--out AAO/OUTPUT/21.04.13.xx.eur.groupcov.stats

plink_v1.9_6.21 --bfile /hpc/dhl_ec/data/references/1000G/Phase1/PLINK/1000Gp1v3.20101123.EUR \
--clump /hpc/dhl_ec/data/_gwas_datasets/_SiGN/sumstats_AAO/21.04.13.xx.eur.groupcov.stats \
--clump-field P_BOLT_LMM_INF \
--clump-p1 5e-8 --clump-p2 0.05 --clump-kb 1000 --clump-r2 0.05 --clump-best --clump-verbose \
--out AAO/OUTPUT/21.04.13.xx.eur.groupcov.stats.gwaslevel

