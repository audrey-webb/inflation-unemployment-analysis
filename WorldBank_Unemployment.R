#Cleaning Data for World Bank(Unemployment)
clean_wrldunempl <- function(rawdirc, x, directory = "./data/") {
  raw <- read.csv(paste0(rawdirc, '/', x), stringsAsFactors = FALSE)
  newdf <- raw[which(grepl("Canada|New Zealand|South Africa|United States", 
                           raw$Country.Name) == TRUE), c("Country.Name", 
                                                         paste0("X", 2006:2013 ,"..", "YR", 2006:2013, "."))]
  names(newdf) <- c("Country", 2006:2013)
  rownames(newdf) <- NULL
  newdf <- t(newdf) [-1, ]
  colnames(newdf) <- c("Canada", "New Zealand", "South Africa", "United States")
  write.csv(newdf, paste0(directory, "/clean_", x))
}

#Cleaning
rawdirc <- './rawdata/worldbank/unemployment'
clean_wrldunempl(rawdirc, "World_Unemployment.csv",
                 directory = "~/Desktop/Project/data/Worldbank/Unemployment")