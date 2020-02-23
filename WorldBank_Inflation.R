#Cleaning data for World Bank(Inflation)
clean_wrldinf <- function(rawdirc, x, directory = "./data/") {
  raw <- read.csv(paste0(rawdirc, "/", x), skip = 4, stringsAsFactors = FALSE)
  newdf <- raw[which(grepl("Canada|New Zealand|South Africa|United States", 
                           raw$Country.Name) == TRUE), c("Country.Name", paste0("X", 2006:2013))]
  names(newdf) <- c("Country", 2006:2013)
  rownames(newdf) <- NULL
  newdf <- t(newdf)[-1, ]
  colnames(newdf) <- c("Canada", "New Zealand", "United States", "South Africa")
  write.csv(newdf, paste0(directory, "/clean_", x))
}

#Cleaning
rawdirc <- "./rawdata/Worldbank/Inflation"
inf_dir <- "./data/Worldbank/Inflation"
clean_wrldinf(rawdirc, x = "world_inflation.csv", directory = inf_dir)
