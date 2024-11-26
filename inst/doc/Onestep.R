## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE
)

## ----setup, echo=FALSE--------------------------------------------------------
library(ILSAmerge)

## ----echo=FALSE, include = FALSE----------------------------------------------
unlist(file.path(tempdir(),"rlii1991"),recursive = TRUE)

## -----------------------------------------------------------------------------
dir.create(file.path(tempdir(),"rlii1991"),showWarnings = FALSE)
output <- file.path(tempdir(),"rlii1991")
ILSAready(study = "RLII", year = 1991,outputdir = output, agreeLicense = TRUE)

## ----echo=FALSE, include = FALSE----------------------------------------------
unlist(file.path(tempdir(),"rlii1991"),recursive = TRUE)

## ----echo=FALSE, include = FALSE----------------------------------------------
unlist(file.path(tempdir(),"timssadv"),recursive = TRUE)

## -----------------------------------------------------------------------------
dir.create(file.path(tempdir(),"timssadv"),showWarnings = FALSE)
output <- file.path(tempdir(),"timssadv")

input <- system.file("extdata/timssadv", package = "ILSAmerge")

ILSAreadylocal(inputdir = input, outputdir = output)

## ----echo=FALSE, include = FALSE----------------------------------------------
unlist(file.path(tempdir(),"timssadv"),recursive = TRUE)

