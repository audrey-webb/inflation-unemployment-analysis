#Store the base data
#World Inflation
world_inflation <- read.csv("./data/Worldbank/Inflation/clean_World_Inflation.csv", 
                            check.names = FALSE, row.names = 1)
#World Unemployment
world_unemployment <- read.csv("./data/Worldbank/unemployment/clean_world_unemployment.csv", 
                               check.names = FALSE, row.names = 1)
#Google Inflation
GCan_inf <- rel_freq('./data/google/inflation/clean_inf_Canada.csv')
GSA_inf <- rel_freq('./data/google/inflation/clean_inf_South_Africa.csv')
GNZ_inf <- rel_freq('./data/google/inflation/clean_inf_NZ.csv')
GUS_inf <- rel_freq('./data/google/inflation/clean_inf_US.csv')

#Google Unemployment
GCan_unemp <- rel_freq('./data/google/unemployment/clean_unemp_Canada.csv')
GSA_unemp <- rel_freq('./data/google/unemployment/clean_unemp_South_Africa.csv')
GNZ_unemp <- rel_freq('./data/google/unemployment/clean_unemp_NZ.csv')
GUS_unemp<- rel_freq('./data/google/unemployment/clean_unemp_US.csv')
