## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE
)

## ----echo=FALSE---------------------------------------------------------------
library(ILSAmerge)

## -----------------------------------------------------------------------------

ILSAfile.info(inputdir = system.file("extdata/reds", package = "ILSAmerge"))


## -----------------------------------------------------------------------------
loaded <- justload(inputdir = system.file("extdata/reds", package = "ILSAmerge"),
         population = "BCGV1")

## -----------------------------------------------------------------------------
class(loaded)

length(loaded)

loaded[[1]]

## -----------------------------------------------------------------------------
loaded <- justload(inputdir = system.file("extdata/reds", package = "ILSAmerge"),
         population = "BCGV1", justattributes = TRUE)

## -----------------------------------------------------------------------------
length(loaded)

loaded[[1]]

