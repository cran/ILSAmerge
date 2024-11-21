## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE
)

## ----setup, echo=FALSE--------------------------------------------------------
library(ILSAmerge)

## -----------------------------------------------------------------------------
ILSAfile.info(inputdir = system.file("extdata/reds", package = "ILSAmerge"))

## ----eval=FALSE---------------------------------------------------------------
# ILSAmerge(inputdir = system.file("extdata/reds", package = "ILSAmerge"),
#           outputdir = tempdir(),
#           filetype = c("rds", "zsav", "sav"))

## ----eval=TRUE----------------------------------------------------------------
ILSAmerge(inputdir = system.file("extdata/reds", package = "ILSAmerge"), 
          outputdir = tempdir(), 
          filetype = c("rds", "zsav", "sav"))

## -----------------------------------------------------------------------------
# Path were raw 'SPSS' files are
input <- system.file("extdata/timssadv", package = "ILSAmerge")

# Path were merged files will be saved
dir.create(file.path(tempdir(),"combineStudents"))
output <- file.path(tempdir(),"combineStudents")

# Merging 'TIMSS' Advanced 1995, as .rds file
ILSAmerge(inputdir = input, outputdir = output, filetype = "rds", quiet = TRUE)

# Rename files
ILSArename(output)

# Check file names
list.files(output,pattern = ".rds")

# Combine student files
combineStudents(inputdir = output, outputdir = output)

# Check file names
list.files(output,pattern = ".rds")

## -----------------------------------------------------------------------------
# Check file names
list.files(output,pattern = ".rds")

# Add school data
addSchools(inputdir = output, outputdir = output)

# Check file names
list.files(output,pattern = ".rds")

