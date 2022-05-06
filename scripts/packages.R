################################################################################
# PACKAGES
################################################################################

install.packages.auto("readr")
install.packages.auto("optparse")
install.packages.auto("tools")
install.packages.auto("dplyr")
install.packages.auto("tidyr")
install.packages.auto("naniar")
install.packages.auto("pander")
install.packages.auto("R.utils")
install.packages.auto("openxlsx")

# To get 'data.table' with 'fwrite' to be able to directly write gzipped-files
# Ref: https://stackoverflow.com/questions/42788401/is-possible-to-use-fwrite-from-data-table-with-gzfile
# install.packages("data.table", repos = "https://Rdatatable.gitlab.io/data.table")
install.packages.auto("data.table")
library(data.table)

install.packages.auto("tidyverse")
install.packages.auto("knitr")
install.packages.auto("DT")
install.packages.auto("nloptr") # required for `eeptools`
install.packages.auto("eeptools")

install.packages.auto("haven")
install.packages.auto("tableone")

install.packages.auto("BlandAltmanLeh")

# Install the devtools package from Hadley Wickham
install.packages.auto('devtools')

# for plotting
install.packages.auto("pheatmap")
install.packages.auto("forestplot")
install.packages.auto("ggplot2")
install.packages.auto("ggpubr")
install.packages.auto("ggrepel")

install.packages.auto("UpSetR")
library(credentials)
set_github_pat()
devtools::install_github("thomasp85/patchwork")

# https://github.com/YinLiLin/CMplot
install.packages.auto("CMplot")
library("CMplot")

# if you want to use the latest version on GitHub:
# source("https://raw.githubusercontent.com/YinLiLin/CMplot/master/R/CMplot.r")

# For regional association plots
install_github("oliviasabik/RACER") 

# Install ggrepel package if needed

library(ggrepel)

# install ggsci
install.packages.auto("ggsci")

# plotly
# install.packages.auto("plotly")

# for coloc
# https://github.com/chr1swallace/coloc

if(!require("remotes"))
  install.packages.auto("remotes") # if necessary
library(remotes)

remotes::install_github("stephenslab/susieR")

remotes::install_github("chr1swallace/coloc@main", build_vignettes = FALSE)
