# YOU MUST RUN THIS FILE IN RSTUDIO FOR IT TO MAKE SENSE
# This file illustrates when R copies or modifies a vector, with some intriguing
# examples
# the most important idea is that when there is only one reference to an object
# and it is changed, it is modified in place. There are two caveats however: 
# 1. When running this in Rstudio an additional reference is created 

library(pryr)

a <- c(1L, 3L) 
tracemem(a)
a[2] <- 2L

c <- a

a[1] <- 100L # now it is coppied as the object has 2 references

## vs. 

b <- 1:10
tracemem(b)
b[2] <- 3L

## the reason for the behavior of b is that the internal representation of 
# sequential 
# https://stackoverflow.com/questions/60688463/why-is-r-not-modifying-in-place-in-this-situation