## Skeleton - Creating Directories Code 
dir.create("~/Desktop/Project")
ProjDirectories <- for(i in 1:length(x)) {
  x <- c("code", "rawdata", "data", "resources", "report", "images",
         "rawdata/Google", "rawdata/Google/Inflation",
         "rawdata/Google/Unemployment", "rawdata/WorldBank",
         "rawdata/WorldBank/Inflation",
         "rawdata/WorldBank/Unemployment","data/Google", 
         "data/Google/Inflation", "data/Google/Unemployment", 
         "data/WorldBank", "data/WorldBank/Inflation",
         "data/WorldBank/Unemployment")
  path <- "~/Desktop/Project/"
  dir.create(paste0(path, x[i]))
}

## World Bank Download using R

#World Inflation
setwd("~/Desktop/Project/rawdata/Worldbank/Inflation")
download.file("http://api.worldbank.org/v2/en/indicator/fp.cpi.totl.zg?downloadformat=csv",
              "WorldInflationzip",
              mode = "wb")
unzip("WorldInflationzip", "fp.cpi.totl.zg_Indicator_en_csv_v2.csv")
file.rename("fp.cpi.totl.zg_Indicator_en_csv_v2.csv", "World_Inflation.csv")


#World unemployment
setwd("~/Desktop/Project/rawdata/Worldbank/Unemployment")
download.file("http://databank.worldbank.org/data/AjaxDownload/FileDownloadHandler.ashx?filename=Data_Extract_From_World_Development_Indicators.zip&filetype=CSV&language=en",
              "WorldUnemploymentzip",
              mode = "wb")
unzip("WorldUnemploymentzip", "Data_Extract_From_World_Development_Indicators_Data.csv")
file.rename("Data_Extract_From_World_Development_Indicators_Data.csv", "World_Unemployment.csv")
