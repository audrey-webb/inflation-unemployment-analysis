#Function for cleaning data for Google Files
clean_data <- function(rawdirc, x, directory = "./data/") {
  raw <- read.table(paste0(rawdirc, '/', x), skip = 4, fill = TRUE, 
                    sep = ',', header = TRUE, quote = "")
  raw1 <- raw[1:grep("Top subregion", raw[, 1]) - 1, ]
  colnames(raw1) <- c("Week", "data")
  split_dates <- function(y) {
    return(matrix(unlist(strsplit(y, ' - ')), ncol = 2, byrow = TRUE))
  }
  raw1$Week <- as.character(raw1$Week)
  a <- as.data.frame(split_dates(raw1$Week))
  newdf <- cbind(a, as.numeric(raw1[, 2]))
  names(newdf) <- c('from', 'to', names(raw1)[2])
  newdf$from <- as.Date(newdf$from)
  newdf$to <- as.Date(newdf$to)
  newdf$from_year <- as.numeric(format(newdf$from, format = '%Y'))
  newdf$to_year <- as.numeric(format(newdf$to, format = '%Y'))
  newdf$from_month <- as.numeric(format(newdf$from, format = '%m'))
  newdf$to_month <- as.numeric(format(newdf$to, format = '%m'))
  newdf$from_day <- as.numeric(format(newdf$from, format = '%d'))
  newdf$to_day <- as.numeric(format(newdf$to, format = '%d'))
  write.csv(newdf, paste0(directory, "/clean_", x))
} 

#Cleaning data for Google Files(inflation)
rawdirc <- "./rawdata/google/inflation"
inf_wd <- "./data/google/inflation"
clean_data(rawdirc, 'inf_Canada.csv', directory = inf_wd)
clean_data(rawdirc, 'inf_South_Africa.csv', directory = inf_wd)
clean_data(rawdirc, 'inf_US.csv', directory = inf_wd)
clean_data(rawdirc, 'inf_NZ.csv', directory = inf_wd)

#Cleaning data for Google Files(unemployment)
rawdirc <- "./rawdata/google/unemployment"
emp_wd <- "./data/google/unemployment"
clean_data(rawdirc, 'unemp_Canada.csv', directory = emp_wd)
clean_data(rawdirc, 'unemp_South_Africa.csv', directory = emp_wd)
clean_data(rawdirc, 'unemp_US.csv', directory = emp_wd)
clean_data(rawdirc, 'unemp_NZ.csv', directory = emp_wd)
