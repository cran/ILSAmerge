## ----setup,echo=FALSE---------------------------------------------------------
library(ILSAmerge)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE
)

## ----eval = TRUE--------------------------------------------------------------
availableILSA()

## ----eval = FALSE-------------------------------------------------------------
# ILSAdownload(study = "RLII", year = 1991, outputdir = tempdir())

## ----eval = TRUE, echo=FALSE--------------------------------------------------
try(ILSAdownload(study = "RLII", year = 1991, outputdir = tempdir()),silent = TRUE)

## ----eval = TRUE--------------------------------------------------------------
ILSAdownload(study = "RLII", year = 1991, outputdir = tempdir(),
             agreeLicense = TRUE)

## ----eval = FALSE-------------------------------------------------------------
# ILSAdownload(study = "RLII", year = 1991, outputdir = tempdir(),
#              unzip = TRUE)

## ----eval = FALSE-------------------------------------------------------------
# ILSAdownload(study = "RLII", year = 1991, outputdir = tempdir(),
#              quiet = TRUE, agreeLicense = TRUE)

## ----eval=FALSE---------------------------------------------------------------
# ILSAdownload(study = "RLII", year = 1991, outputdir = tempdir(),
#              maxtime = 60)

