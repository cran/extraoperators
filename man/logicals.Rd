% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logicals.R
\name{logicals}
\alias{logicals}
\alias{\%gele\%}
\alias{\%gel\%}
\alias{\%gle\%}
\alias{\%gl\%}
\alias{\%g\%}
\alias{\%ge\%}
\alias{\%l\%}
\alias{\%le\%}
\alias{\%!in\%}
\alias{\%nin\%}
\alias{\%flipIn\%}
\alias{\%grepl\%}
\alias{\%!grepl\%}
\title{Several logical range comparison helpers}
\usage{
e1 \%gele\% e2

e1 \%gel\% e2

e1 \%gle\% e2

e1 \%gl\% e2

e1 \%g\% e2

e1 \%ge\% e2

e1 \%l\% e2

e1 \%le\% e2

e1 \%!in\% e2

e1 \%nin\% e2

e1 \%flipIn\% e2

e1 \%grepl\% e2

e1 \%!grepl\% e2
}
\arguments{
\item{e1}{A number of vector to be evaluated}

\item{e2}{A vector of one or two numbers used to denote the
limits for logical comparison.}
}
\value{
A logical vector of the same length as \code{e1}.
}
\description{
Several logical range comparison helpers
}
\examples{

1:5 \%gele\% c(2, 4)
1:5 \%gele\% c(4, 2) # order does not matter uses min / max

1:5 \%gel\% c(2, 4)
1:5 \%gel\% c(4, 2) # order does not matter uses min / max

1:5 \%gle\% c(2, 4)
1:5 \%gle\% c(4, 2) # order does not matter uses min / max

1:5 \%gl\% c(2, 4)
1:5 \%gl\% c(4, 2) # order does not matter uses min / max

1:5 \%g\% c(2)

1:5 \%ge\% c(2)

1:5 \%l\% c(2)

1:5 \%le\% c(2)

1:5 \%!in\% c(2, 99)
c("jack", "jill", "john", "jane") \%!in\% c("jill", "jane", "bill")

c("jack", "jill", "john", "jane", "sill", "ajay") \%grepl\% "ja"
c("jack", "jill", "john", "jane", "sill", "ajay") \%grepl\% "^ja"

c("jack", "jill", "john", "jane", "sill", "ajay") \%!grepl\% "ja"
c("jack", "jill", "john", "jane", "sill", "ajay") \%!grepl\% "^ja"
}
