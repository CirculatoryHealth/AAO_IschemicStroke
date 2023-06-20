# Genetic association analysis of age of ischemic stroke onset: a caveat
[![DOI](https://zenodo.org/badge/480746009.svg)](https://zenodo.org/badge/latestdoi/480746009)

<!-- Please add a brief introduction to explain what the project is about    -->

Joanna von Berg, Patrick F. McArdle, Paavo Häppölä, Charles Kooperberg, SiGN consortium, FinnGen, Women’s Health Initiative, Steven J. Kittner, Braxton D. Mitchell, Jeroen de Ridder, [Sander W. van der Laan](https://orcid.org/0000-0001-6888-1404).

## Abstract

Large genome-wide association studies (GWAS) employing case-control study designs have now identified tens of loci associated with ischemic stroke (IS). As a complement to these studies, we performed GWAS in a case-only design to identify loci influencing age at onset (AAO) of ischemic stroke. Analyses were conducted in a Discovery cohort of 10,857 ischemic stroke cases under a linear regression framework. We meta-analyzed all SNPs with p-value < 1x10<sup>-5</sup> in a sex-combined or sex-stratified analysis using summary data from two additional Replication cohorts.  In the women-only meta-analysis, we detected significant evidence for association of AAO with rs429358 - an exonic variant in _APOE_ that encodes for the APOE-Є4 allele.  Each copy of the rs429358:T>C allele was associated with a 1.29 years earlier stroke AOO (meta p-value = 2.48x10<sup>-11</sup>). 

This _APOE_ variant has previously been associated with increased mortality, but not with ischemic stroke AAO. We therefore hypothesized that the association with AAO may reflect a survival bias attributable to an age-related decline in mortality among APOE-Є4 carriers and having no association to stroke AAO per se.  Using a simulation study, we found that a variant associated with overall mortality might indeed be detected with an AAO analysis. A variant with a two-fold increase on mortality risk would lead to an observed effect of AAO that is comparable to what we found. In conclusion, we detected a robust association of the APOE locus with stroke AAO and provided simulations to suggest that this association may be unrelated to ischemic stroke per se but related to a general survival bias.    


## Where do I start?

You can load this project in RStudio by opening the file called 'AAO_IschemicStroke.git.Rproj'.

## Project structure

<!--  You can add rows to this table, using "|" to separate columns.         -->
File                         | Description                             | Usage         
---------------------------- | --------------------------------------- | --------------
README.md                    | Description of project                  | Human editable
LICENSE                      | User permissions                        | Read only     
AAO_IschemicStroke.git.Rproj | Project file                            | Loads project 
.worcs                       | WORCS metadata YAML                     | Read only     
renv.lock                    | Reproducible R environment              | Read only     
1. Parsing_GWASSumStats.Rmd  | Notebook to plot GWAS data              | Human editable
2. AssociationPlots.Rmd      | Notebook to create regional plots       | Human editable
3. SimulationPlot.Rmd        | Notebook for the simulation analysis    | Human editable
4. forest.poster.sign.Rmd    | Notebook to generate the forest plot    | Human editable
_AAO_archived                | Some scribble-scripts                   | Human editable
AAO                          | Results and plots                       | Human editable
finemap                      | Results from finemapping; not used; available offline | Human editable
images                       | Project images                          | Human editable
meta                         | Results from the meta-GWAS              | Human editable
meta_discovery               | Discovery results                       | Human editable
meta_other_stuff             | Results from meta-analysis; raw input; not used; available offline  | Human editable
simulation_data              | Simulation data                         | Human editable
scripts                      | Simulation plot                         | Human editable
targets                      | Targets from this study                 | Human editable

<!--  You can consider adding the following to this file:                    -->
<!--  * A citation reference for your project                                -->
<!--  * Contact information for questions/comments                           -->
<!--  * How people can offer to contribute to the project                    -->
<!--  * A contributor code of conduct, https://www.contributor-covenant.org/ -->

## Data

All the input data and individual cohort GWAS summary statistics are available 
through our collaborators (FinnGen and WHI), and for SiGN through dbGaP: [link here]

The summary statistics from the meta-analysis in SiGN are available through 
dataverseNL [link here] and GWAS Catalog [link here].

The lookups in the MEGASTROKE data, FinnGen, and WHI are in the `meta`-folder. 

# Reproducibility

This project uses the Workflow for Open Reproducible Code in Science (WORCS) to
ensure transparency and reproducibility. The workflow is designed to meet the
principles of Open Science throughout a research project. 

To learn how WORCS helps researchers meet the TOP-guidelines and FAIR principles,
read the preprint at https://osf.io/zcvbs/

## WORCS: Advice for authors

* To get started with `worcs`, see the [setup vignette](https://cjvanlissa.github.io/worcs/articles/setup.html)
* For detailed information about the steps of the WORCS workflow, see the [workflow vignette](https://cjvanlissa.github.io/worcs/articles/workflow.html)

## WORCS: Advice for readers

Please refer to the vignette on [reproducing a WORCS project]() for step by step advice.
<!-- If your project deviates from the steps outlined in the vignette on     -->
<!-- reproducing a WORCS project, please provide your own advice for         -->
<!-- readers here.                                                           -->

# Acknowledgements

This work was supported by NIH grants R01 NS100178 and R01 NS105150 from the U.S. National Institutes of Health. JdR is supported by a Vidi Fellowship (639.072.715) from the Dutch Organization for Scientific Research (Nederlandse Organisatie voor Wetenschappelijk Onderzoek, NWO).  SJK is additionally supported by the Department of Veterans Affairs RR&D N1699-R and BX004672-01A1. SWvdL is funded through EU H2020 TO_AITION (grant number: 848146).

We are thankful for the support of the Netherlands CardioVascular Research Initiative of the Netherlands Heart Foundation (CVON 2011/B019 and CVON 2017-20: Generating the best evidence-based pharmaceutical targets for atherosclerosis [GENIUS I&II]), the ERA-CVD program ‘druggable-MI-targets’ (grant number: 01KL1802), and the Leducq Fondation ‘PlaqOmics’.

The Women’s Health Initiatives (WHI) program was funded by the National Heart, Lung, and Blood Institute, National Institutes of Health, U.S. Department of Health and Human Services through contracts 75N92021D00001, 75N92021D00002, 75N92021D00003, 75N92021D00004, and 75N92021D00005.

The framework was based on the [`WORCS` package](https://osf.io/zcvbs/).

<center>
<a href='https://www.era-cvd.eu'><img src='images/ERA_CVD_Logo_CMYK.png' align="center" height="75" /></a> <a href='https://www.to-aition.eu'><img src='images/to_aition.png' align="center" height="75" /></a> 
<a href='https://www.plaqomics.com'><img src='images/leducq-logo-large.png' align="center" height="75" /></a> <a href='https://www.fondationleducq.org'><img src='images/leducq-logo-small.png' align="center" height="75" /></a> 
<a href='https://osf.io/zcvbs/'><img src='images/worcs_icon.png' align="center" height="75" /></a> <a href='https://www.atheroexpress.nl'><img src='images/AE_Genomics_2010.png' align="center" height="100" /></a>
</center>

#### Changes log

    Version:      v1.0.2
    Last update:  2023-06-21
    Written by:   Sander W. van der Laan (s.w.vanderlaan-2[at]umcutrecht.nl).
    Description:  Script to get some figures for AAO.
    Minimum requirements: R version 3.4.3 (2017-06-30) -- 'Single Candle', Mac OS X El Capitan
    
    Changes log
    * v1.0.2 Textual fixes. Changes to the funding.
    * v1.0.1 Additional clarifications on data availability. Updates to plots. Updates to available results.
    * v1.0.0 Initial version. 
    
    
--------------

#### The MIT License (MIT)
##### Copyright (c) 1979-2023 Sander W. van der Laan | s.w.vanderlaan [at] gmail [dot] com.

<sup>Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:</sup>

<sup>The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.</sup>

<sup>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.</sup>

<sup>Reference: http://opensource.org.</sup>
