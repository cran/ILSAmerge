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

## -----------------------------------------------------------------------------

dirdat <- system.file("extdata/reds", package = "ILSAmerge")

bfa <- readILSA(file.path(dirdat,"bsgbfav1.sav"))

bfa


## -----------------------------------------------------------------------------
# merge data
ILSAmerge(inputdir = dirdat,outputdir = tempdir(),filetype = "sav")
# rename merged files
ILSArename(inputdir = tempdir())

stu <- readILSA(file.path(tempdir(),"REDS_2021_student.sav"))

stu


## -----------------------------------------------------------------------------

bfa2 <- untibble(tibble = bfa, mistoNAs = TRUE)

stu2 <- untibble(tibble = stu, mistoNAs = TRUE)

class(bfa)
class(bfa2)

class(stu)
class(stu2)


