#Function for taking the weighted average of relative frequency per year
rel_freq <- function(file, data = "inflation") { #x is the clean data_frame file
  x <- read.csv(file)
  y <- NULL
  for (i in 2006:2013) {
    a <- which(x$from_year == i & x$to_year == i)
    b <- NULL
    for (j in 1:length(a)) {
      b[j] <- x[a[j], data]
    } 
  sum1 <- sum(b*7)
  c <- setdiff(which(x$from_year == i | x$to_year == i), a)
  d <- NULL
  for (k in 1:length(c)) {
      if(x[c[k], 'from_year'] == i) {
        d[k] <- (31 - x[c[k], 'from_day'] + 1) * x[c[k], data]
      } else if(x[c[k], 'to_year'] == i) {
        d[k] <- x[c[k], 'from_day'] * x[c[k], data]
      }
    } 
    sum2 <- sum(d)
    e <- as.numeric(as.Date(paste(i, 12, 31, sep = '-')) - as.Date(paste(i, 1, 1, sep = '-')) + 1)
    y[i - 2005] <- (sum1 + sum2)/e
  } 
  names(y) <- 2006:2013
  return(y)
}