#See the relationship between Unemployment and Inflation between 
#different countries using Google data

#United States
par(mar = c(5, 4, 4, 2) + 0.1)
plot(GUS_unemp, GUS_inf, 
     main = "Google Unemployment vs. Inflation (United States)", 
     xlab = "US Unemployment Search Freq", ylab = "US Inflation Search Freq", pch = 16)
abline(lm(GUS_inf~GUS_unemp), col = rgb(1, 0, 0), lwd = 4)
cor(GUS_inf, GUS_unemp)

#South Africa
par(mar = c(5, 4, 4, 2) + 0.1)
plot(GSA_unemp, GSA_inf, 
     main = "Google Unemployment vs. Inflation (South Africa)", 
     xlab = "South Africa Unemployment Search Freq", 
     ylab = "South Africa Inflation Search Freq", pch = 16)
abline(lm(GSA_inf~GSA_unemp), col = rgb(1, 0, 0), lwd = 4)
cor(GSA_inf, GSA_unemp)

#Canada
par(mar = c(5, 4, 4, 2) + 0.1)
plot(GCan_unemp, GCan_inf, 
     main = "Google Unemployment vs. Inflation (Canada)", 
     xlab = "Canada Unemployment Search Freq", 
     ylab = "Canada Inflation Search Freq", pch = 16)
abline(lm(GCan_inf~GCan_unemp), col = rgb(1, 0, 0), lwd = 4)
cor(GCan_inf, GCan_unemp)

#New Zealand
par(mar = c(5, 4, 4, 2) + 0.1)
plot(GNZ_unemp, GNZ_inf, 
     main = "Google Unemployment vs. Inflation (New Zealand)", 
     xlab = "New Zealand Unemployment Search Freq", 
     ylab = "New Zealand Inflation Search Freq", pch = 16)
abline(lm(GNZ_inf~GNZ_unemp), col = rgb(1, 0, 0), lwd = 4)
cor(GNZ_inf, GNZ_unemp)