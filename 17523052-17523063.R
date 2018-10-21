library(Ryacas)
#GILANG PERSADA 17523052
#LINTANG DIGDOYO 17523063


#Limit
#No 1
f <- function(x){
  result <- (1-cos(x))/(x)
  return (result)
}

x <- Sym("x")

Limit(f(x),x,0)

#No 2
g <- function(h){
  result <- (2*(-3+h)^2-18)/h
  return (result)
}

h <- Sym("h")
Limit(g(h),h,0)

#No 3
i <- function(t){
  result <- (t-sqrt(3*t+4))/(4-t)
}

t <- Sym("t")
Limit(i(t),t,4)

#Differential
#No 1
Simplify(deriv(sqrt(x)*(x+1),x))

#No 2
Simplify(deriv((2*x^2-3)/sqrt(x)),x)

#No 3
Simplify(deriv((x-1)/(x+1),x))

#No 4
a <- function(x){
  result <- Simplify(deriv(sqrt(x)*(x+1),x))
  return (result)
}

b <- function(x){
  result <- Simplify(deriv((2*x^2-3)/sqrt(x)),x)
  return (result)
}

c <- function(x){
  result <- Simplify(deriv((x-1)/(x+1),x))
  return (result)
}

#Integration
#No 1
Integrate(2*x^3,0,3,x=x)

#No 2
Integrate(1-5*x^4,-1,2,x=x)

#No 3
Integrate(x^4-3*x^2+5,-2,2,x=x)

#No 4
Integrate(x^2+1/2*sqrt(x),1,4,x=x)
#HASIL NYA SEHARUSNYA 66/3, TAPI JAWABAN DARI EXPRESSION INI ADALAH 70/3

#No 5
Integrate(x*(2-3*x)^2,0,2,x=x)
