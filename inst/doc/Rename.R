## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE
)

## ----setup, echo=FALSE--------------------------------------------------------
library(ILSAmerge)

## ----echo=FALSE---------------------------------------------------------------
unlink(file.path(tempdir(),"REDS2021"),recursive = TRUE)

## ----eval=TRUE----------------------------------------------------------------
dir.create(file.path(tempdir(),"REDS2021"),showWarnings = FALSE)

ILSAmerge(inputdir = system.file("extdata/reds", package = "ILSAmerge"), 
          outputdir = file.path(tempdir(),"REDS2021"), 
          filetype = c("rds", "zsav", "sav"),quiet = TRUE)

## ----eval=TRUE----------------------------------------------------------------
list.files(file.path(tempdir(),"REDS2021"))

## ----eval=TRUE----------------------------------------------------------------
ILSArename(inputdir = file.path(tempdir(),"REDS2021"))
list.files(file.path(tempdir(),"REDS2021"))


## ----echo=FALSE---------------------------------------------------------------
unlink(file.path(tempdir(),"REDS2021"),recursive = TRUE)

