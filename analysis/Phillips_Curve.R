#Graphical Comparison of Phillips Curve (World Data vs. Google)

#United States
plot.new()
par(mar = c(5, 4, 5.5, 5) + 0.1)
plot(world_unemployment$`United States`, world_inflation$`United States`, 
     main = "", 
     xlab = "", ylab = "", pch = 15, axes = FALSE)
abline(lm(world_inflation$`United States`~world_unemployment$`United States`), 
       col = rgb(0, 0, 0), lwd = 4)
axis(2, at = seq(0, 4, by = 1), col=rgb(0, 0, 0),las=1)
mtext("US Inflation", side=2, col=rgb(0, 0, 0),line=2) 
axis(1, at = seq(5, 9, by = 1), col=rgb(0, 0, 0),las=1)
mtext("US Unemployment", side=1, col=rgb(0, 0, 0),line=2) 
box()
par(new = TRUE)
plot(GUS_unemp, GUS_inf,
     xlab = "", ylab = "", pch = 16, axes = FALSE, col = rgb(1, 0, 0), main = '')
axis(4, at = seq(30, 60, by = 5), col=rgb(1, 0, 0),las=1, col.axis = rgb(1, 0, 0))
mtext("Google Inflation", side=4, col=rgb(1, 0, 0),line=2) 
axis(3, at = seq(10, 70, by = 10), col=rgb(1, 0, 0),las=1, col.axis = rgb(1, 0, 0))
mtext("Google Unemployment", side=3, col=rgb(1, 0, 0),line=2) 
abline(lm(GUS_inf~GUS_unemp), col = rgb(1, 0, 0), lwd = 4)
legend("bottomleft",legend=c("US","Google"),
       text.col=c(rgb(0, 0, 0),rgb(1, 0, 0)),pch=c(16,15),
       col=c(rgb(0, 0, 0),rgb(1, 0, 0)))
title("US Phillips Curve (Actual vs. Google)", line = 3.5)

#South Africa
plot.new()
par(mar = c(5, 4, 5.5, 5) + 0.1)
plot(world_unemployment$`South Africa`, world_inflation$`South Africa`, 
     main = "", 
     xlab = "", ylab = "", pch = 15, axes = FALSE)
abline(lm(world_inflation$`South Africa`~world_unemployment$`South Africa`), 
       col = rgb(0, 0, 0), lwd = 4)
axis(2, at = seq(4, 12, by = 1), col=rgb(0, 0, 0),las=1)
mtext("South Africa Inflation", side=2, col=rgb(0, 0, 0),line=2) 
axis(1, at = seq(22, 25, by = 0.5), col=rgb(0, 0, 0),las=1)
mtext("South Africa Unemployment", side=1, col=rgb(0, 0, 0),line=2) 
box()
par(new = TRUE)
plot(GSA_unemp, GSA_inf,
     xlab = "", ylab = "", pch = 16, axes = FALSE, col = rgb(1, 0, 0), main = '')
axis(4, at = seq(5, 40, by = 5), col=rgb(1, 0, 0),las=1, col.axis = rgb(1, 0, 0))
mtext("Google Inflation", side=4, col=rgb(1, 0, 0),line=2) 
axis(3, at = seq(10, 40, by = 5), col=rgb(1, 0, 0),las=1, col.axis = rgb(1, 0, 0))
mtext("Google Unemployment", side=3, col=rgb(1, 0, 0),line=2) 
abline(lm(GSA_inf~GSA_unemp), col = rgb(1, 0, 0), lwd = 4)
legend("topleft",legend=c("South Africa","Google"),
       text.col=c(rgb(0, 0, 0),rgb(1, 0, 0)),pch=c(16,15),
       col=c(rgb(0, 0, 0),rgb(1, 0, 0)),inset = 0.1, cex = 0.9)
title("South Africa Phillips Curve (Actual vs. Google)", line = 3.5)
