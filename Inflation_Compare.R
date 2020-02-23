#Graphical Comparison(Inflation)
#United States
plot.new()
par(mar=c(5, 4, 4, 5) + 0.1)
plot(world_inflation$`United States`, xlab = "", ylab = "", 
     main = "US Inflation Comparison",
     axes = FALSE, type = "b", pch = 16)
axis(2, at = seq(0, 4, by = 1), col=rgb(0, 0, 0),las=1)
mtext("US Inflation",side=2,line=2.5)
box()
par(new = TRUE)
plot(GUS_inf, pch = 15, type = 'b', xlab = '', ylab = '', main = '', 
     axes = FALSE, col = rgb(1, 0, 0))
axis(4, at = seq(30, 60, by = 5), col = rgb(1, 0, 0), col.axis = rgb(1, 0, 0), las = 1)
mtext("Google Trend", side=4,col=rgb(1, 0, 0),line=2.5) 
axis(1, at = 1:8, labels = seq(2006, 2013, by = 1), las = 1)
mtext("Years", side=1, col=rgb(0, 0, 0),line=2.5) 
legend("bottomleft",legend=c("US Actual","Google Trend"),
       text.col=c(rgb(0, 0, 0),rgb(1, 0, 0)),pch=c(16,15),
       col=c(rgb(0, 0, 0),rgb(1, 0, 0)), cex = 1)

#South Africa
plot.new()
par(mar=c(5, 4, 4, 5) + 0.1)
plot(world_inflation$`South Africa`, xlab = "", ylab = "", 
     main = "South Africa Inflation Comparison",
     axes = FALSE, type = "b", pch = 16)
axis(2, at = seq(4, 12, by = 2), col=rgb(0, 0, 0),las=1)
mtext("South Africa Inflation",side=2,line=2.5)
box()
par(new = TRUE)
plot(GSA_inf, pch = 15, type = 'b', xlab = '', ylab = '', main = '', 
     axes = FALSE, col = rgb(1, 0, 0))
axis(4, at = seq(0, 35, by = 5), col = rgb(1, 0, 0), col.axis = rgb(1, 0, 0), las = 1)
mtext("Google Trend", side=4,col=rgb(1, 0, 0),line=2.5) 
axis(1, at = 1:8, labels = seq(2006, 2013, by = 1), las = 1)
mtext("Years", side=1, col=rgb(0, 0, 0),line=2.5) 
legend("topright",legend=c("South Africa Actual","Google Trend"),
       text.col=c(rgb(0, 0, 0),rgb(1, 0, 0)),pch=c(16,15),
       col=c(rgb(0, 0, 0),rgb(1, 0, 0)), cex = 0.8)

#Canada
plot.new()
par(mar=c(5, 4, 4, 5) + 0.1)
plot(world_inflation$`Canada`, xlab = "", ylab = "", 
     main = "Canada Inflation Comparison",
     axes = FALSE, type = "b", pch = 16)
axis(2, at = seq(0.5, 3, by = 0.5), col=rgb(0, 0, 0),las=1)
mtext("US Canada",side=2,line=2.5)
box()
par(new = TRUE)
plot(GCan_inf, pch = 15, type = 'b', xlab = '', ylab = '', main = '', 
     axes = FALSE, col = rgb(1, 0, 0))
axis(4, at = seq(30, 46, by = 2), col = rgb(1, 0, 0), col.axis = rgb(1, 0, 0), las = 1)
mtext("Google Trend", side=4, col=rgb(1, 0, 0),line=2.5) 
axis(1, at = 1:8, labels = seq(2006, 2013, by = 1), las = 1)
mtext("Years", side=1, col=rgb(0, 0, 0),line=2.5) 
legend("bottomleft",legend=c("Canada Actual","Google Trend"),
       text.col=c(rgb(0, 0, 0),rgb(1, 0, 0)),pch=c(16,15),
       col=c(rgb(0, 0, 0),rgb(1, 0, 0)),cex = 0.8)

#New Zealand
plot.new()
par(mar=c(5, 4, 4, 5) + 0.1)
plot(world_inflation$`New Zealand`, xlab = "", ylab = "", 
     main = "New Zealand Inflation Comparison",
     axes = FALSE, type = "b", pch = 16)
axis(2, at = seq(0, 4.5, by = 0.5), col=rgb(0, 0, 0),las=1)
mtext("New Zealand Inflation",side=2,line=2.5)
box()
par(new = TRUE)
plot(GNZ_inf, pch = 15, type = 'b', xlab = '', ylab = '', main = '', 
     axes = FALSE, col = rgb(1, 0, 0))
axis(4, at = seq(2, 20, by = 2), col = rgb(1, 0, 0), col.axis = rgb(1, 0, 0), las = 1)
mtext("Google Trend", side=4,col=rgb(1, 0, 0),line=2.5) 
axis(1, at = 1:8, labels = seq(2006, 2013, by = 1), las = 1)
mtext("Years", side=1, col=rgb(0, 0, 0),line=2.5) 
legend("bottom",legend=c("New Zealand Actual","Google Trend"),
       text.col=c(rgb(0, 0, 0),rgb(1, 0, 0)),pch=c(16,15),
       col=c(rgb(0, 0, 0),rgb(1, 0, 0)),cex = 0.8)
