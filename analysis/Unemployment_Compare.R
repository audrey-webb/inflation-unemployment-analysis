#Graphical Comparisons(Unemployment)

par(mfrow = c(2, 2))
#United States
par(mar=c(5, 4, 4, 5) + 0.1)
plot(world_unemployment$`United States`, xlab = "", ylab = "", main = "US",
     axes = FALSE, type = "b", pch = 16)
axis(2, at = seq(4, 10, by = 1), col = rgb(0, 0, 0),las=1)
mtext("Unemployment %",side=2,line=2.5, cex = 0.7)
box()
par(new = TRUE)
plot(GUS_unemp, pch = 15, type = 'b', xlab = '', ylab = '', 
     main = '', axes = FALSE, col = rgb(1, 0, 0))
axis(4, at = seq(0, 70, by = 10), col = rgb(1, 0, 0), col.axis = rgb(1, 0, 0), 
     las = 1)
mtext("Google", side=4, col=rgb(1, 0, 0), line=2.5, cex = 0.7) 
axis(1, at = 1:8, labels = seq(2006, 2013, by = 1), las = 1)
mtext("Years", side=1, col=rgb(0, 0, 0),line=2.5, cex = 0.7) 

#South Africa
par(mar=c(5, 4, 4, 5) + 0.1)
plot(world_unemployment$`South Africa`, xlab = "", ylab = "", main = "South Africa",
     axes = FALSE, type = "b", pch = 16)
axis(2, at = seq(22.5, 25.5, by = 0.5), col=rgb(0, 0, 0),las=1)
mtext("Unemployment",side=2, line=3, cex = 0.7)
box()
par(new = TRUE)
plot(GSA_unemp, pch = 15, type = 'b', xlab = '', ylab = '', main = '', 
     axes = FALSE, col = rgb(1, 0, 0))
axis(4, at = seq(10, 40, by = 5), col = rgb(1, 0, 0), col.axis = rgb(1, 0, 0), 
     las = 1)
mtext("Google", side=4, col=rgb(1, 0, 0),line=2.5, cex = 0.7) 
axis(1, at = 1:8, labels = seq(2006, 2013, by = 1), las = 1)
mtext("Years", side=1, col=rgb(0, 0, 0),line=2.5, cex = 0.7) 

#Canada
par(mar=c(5, 4, 4, 5) + 0.1)
plot(world_unemployment$`Canada`, xlab = "", ylab = "", main = "Canada",
     axes = FALSE, type = "b", pch = 16)
axis(2, at = seq(6, 8, by = 0.5), col=rgb(0, 0, 0),las=1)
mtext("Canada",side=2,line=2.5, cex = 0.7)
box()
par(new = TRUE)
plot(GCan_unemp, pch = 15, type = 'b', xlab = '', ylab = '', main = '', 
     axes = FALSE, col = rgb(1, 0, 0))
axis(4, at = seq(10, 60, by = 5), col = rgb(1, 0, 0), col.axis = rgb(1, 0, 0), las = 1)
mtext("Google", side=4,col=rgb(1, 0, 0),line=2.5, cex = 0.7) 
axis(1, at = 1:8, labels = seq(2006, 2013, by = 1), las = 1)
mtext("Years", side=1, col=rgb(0, 0, 0),line=2.5, cex = 0.7) 

#New Zealand
par(mar=c(5, 4, 4, 5) + 0.1)
plot(world_unemployment$`New Zealand`, xlab = "", ylab = "", main = "New Zealand",
     axes = FALSE, type = "b", pch = 16)
axis(2, at = seq(4, 7, by = 0.5), col=rgb(0, 0, 0),las=1)
mtext("New Zealand",side=2,line=2.5, cex = 0.7)
box()
par(new = TRUE)
plot(GCan_unemp, pch = 15, type = 'b', xlab = '', ylab = '', main = '', 
     axes = FALSE, col = rgb(1, 0, 0))
axis(4, at = seq(15, 60, by = 5), col = rgb(1, 0, 0), col.axis = rgb(1, 0, 0), las = 1)
mtext("Google", side=4,col=rgb(1, 0, 0),line=2.5, cex = 0.7) 
axis(1, at = 1:8, labels = seq(2006, 2013, by = 1), las = 1)
mtext("Years", side=1, col=rgb(0, 0, 0),line=2.5, cex = 0.7) 
par(usr=c(0,1,0,1), # Reset the coordinates
    xpd=NA)
legend(0,0, # Find suitable coordinates by trial and error
       c("World Bank Data", "Google Trends Data"), lty=1, lwd=3, 
       col=c(rgb(0, 0, 0), rgb(1, 0, 0)), box.col=NA)
