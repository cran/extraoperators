## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(extraoperators)

## ------------------------------------------------------------------------

sample_numbers <- c(9, 1, 5, 3, 4, 10, 99)


## ------------------------------------------------------------------------

## base R: greater than 3?
sample_numbers > 3

## base R: greater than or equal to 3?
sample_numbers >= 3

## base R: less than 3?
sample_numbers < 3

## base R: less than or equal to 3?
sample_numbers <= 3


## ------------------------------------------------------------------------

## extraoperators: greater than 3?
sample_numbers %g% 3

## extraoperators: greater than or equal to 3?
sample_numbers %ge% 3

## extraoperators: less than 3?
sample_numbers %l% 3

## extraoperators: less than or equal to 3?
sample_numbers %le% 3


## ------------------------------------------------------------------------

## base R: greater than 3 and less than 10?
sample_numbers > 3 & sample_numbers < 10

## base R: greater than or equal to 3 and less than 10?
sample_numbers >= 3 & sample_numbers < 10

## base R: greater than 3 and less than or equal to 10?
sample_numbers > 3 & sample_numbers <= 10

## base R: greater than or equal to 3 and less than or equal to 10?
sample_numbers >= 3 & sample_numbers <= 10


## ------------------------------------------------------------------------

## extraoperators: greater than 3 and less than 10?
sample_numbers %gl% c(3, 10)

## extraoperators: greater than or equal to 3 and less than 10?
sample_numbers %gel% c(3, 10)

## extraoperators: greater than 3 and less than or equal to 10?
sample_numbers %gle% c(3, 10)

## extraoperators: greater than or equal to 3 and less than or equal to 10?
sample_numbers %gele% c(3, 10)


## ------------------------------------------------------------------------

## base R: not in 3 or 10
!sample_numbers %in% c(3, 10)

## extraoperators: not in 3 or 10
sample_numbers %!in% c(3, 10)


## ------------------------------------------------------------------------

## base R: what are the indices that match 3 and 10?
which(sample_numbers %in% c(3, 10))

## extraoperators: what are the indices that match 3 and 10?
sample_numbers %?in% c(3, 10)

## base R: what are the indices for numbers between 3 and 10?
which(sample_numbers > 3 & sample_numbers < 10)

## extraoperators: what are the indices for numbers between 3 and 10?
sample_numbers %?gl% c(3, 10)


## ------------------------------------------------------------------------

## base R: subset to only numbers between 3 and 10
mean(subset(sample_numbers, sample_numbers > 3 & sample_numbers < 10))

## or equivalently 
mean(sample_numbers[sample_numbers > 3 & sample_numbers < 10])

## extraoperators: subset to only numbers between 3 and 10
mean(sample_numbers %sgl% c(3, 10))


## ------------------------------------------------------------------------

## base R: are all numbers between 0 and 10?
all(sample_numbers > 0 & sample_numbers < 10)

## extraoperators: are all numbers between 0 and 10?
sample_numbers %agl% c(0, 10)

## extraoperators: are all numbers between 0 and 100?
sample_numbers %agl% c(0, 100)


## ------------------------------------------------------------------------

## extraoperators: are NO numbers between 0 and 100?
!sample_numbers %agl% c(0, 100)

## extraoperators: are NO numbers between 55 and 60?
!sample_numbers %agl% c(55, 60)


## ------------------------------------------------------------------------

## extraoperators: are all values equal?
sample_numbers %a==% sample_numbers

## extraoperators: are all values NOT equal?
c(1, 3, 5) %a!=% c(5, 1, 3)


## ------------------------------------------------------------------------
age <- c(19, 30, 90, 50, NA, 45)
age %c% "(> 18 & < 65) & !is.na"

## ------------------------------------------------------------------------
age <- c(19, 30, 90, 50, NA, 16, -9)
age %c% "(> 18 | == -9) & !is.na"

## ------------------------------------------------------------------------
age %ac% "(> 18 | == -9) & !is.na"

age %ac% "> -Inf"
age %ac% "> -Inf & !is.na"
age %ac% "> -Inf | is.na"

age %sc% "(> 18 | == -9) & !is.na"

age %?c% "(> 18 | == -9) & !is.na"

## ------------------------------------------------------------------------

c(1, 2, 6, 300) %e% "(1, 5) | [6, Inf)"

## this is OK
x <- max(mtcars$mpg)
c(1, 2, 6, 300) %e% "(1, 5) | [6, x)"

## ## this would NOT be OK
## c(1, 2, 6, 300) %e% "(1, 5) | [6, max(mtcars$mpg))"



