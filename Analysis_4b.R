#Graphical Comparison of Phillips Curve (World Data vs. Google)

#Canada
plot.new()
par(mar = c(5, 4, 5.5, 5) + 0.1)
plot(world_unemployment$`Canada`, world_inflation$`Canada`, 
     main = "", 
     xlab = "", ylab = "", pch = 15, axes = FALSE)
abline(lm(world_inflation$`Canada`~world_unemployment$`Canada`), 
       col = rgb(0, 0, 0), lwd = 4)
axis(2, at = seq(0.5, 3, by = 0.5), col=rgb(0, 0, 0),las=1)
mtext("Canada Inflation", side=2, col=rgb(0, 0, 0),line=2.5) 
axis(1, at = seq(6, 8, by = 0.5), col=rgb(0, 0, 0),las=1)
mtext("Canada Unemployment", side=1, col=rgb(0, 0, 0),line=2) 
box()
par(new = TRUE)
plot(GCan_unemp, GCan_inf,
     xlab = "", ylab = "", pch = 16, axes = FALSE, col = rgb(1, 0, 0), main = '')
axis(4, at = seq(30, 44, by = 2), col=rgb(1, 0, 0),las=1, col.axis = rgb(1, 0, 0))
mtext("Google Inflation", side=4, col=rgb(1, 0, 0),line=2) 
axis(3, at = seq(10, 60, by = 5), col=rgb(1, 0, 0),las=1, col.axis = rgb(1, 0, 0))
mtext("Google Unemployment", side=3, col=rgb(1, 0, 0),line=2) 
abline(lm(GCan_inf~GCan_unemp), col = rgb(1, 0, 0), lwd = 4)
legend("topright",legend=c("Canada","Google"),
       text.col=c(rgb(0, 0, 0),rgb(1, 0, 0)),pch=c(16,15),
       col=c(rgb(0, 0, 0),rgb(1, 0, 0)))
title("Canada Phillips Curve (Actual vs. Google)", line = 3.5)

#New Zealand
plot.new()
par(mar = c(5, 4, 5.5, 5) + 0.1)
plot(world_unemployment$`New Zealand`, world_inflation$`New Zealand`, 
     main = "", 
     xlab = "", ylab = "", pch = 15, axes = FALSE)
abline(lm(world_inflation$`New Zealand`~world_unemployment$`New Zealand`), 
       col = rgb(0, 0, 0), lwd = 4)
axis(2, at = seq(0, 4, by = 1), col=rgb(0, 0, 0),las=1)
mtext("New Zealand Inflation", side=2, col=rgb(0, 0, 0),line=2) 
axis(1, at = seq(4, 7, by = 0.5), col=rgb(0, 0, 0),las=1)
mtext("New Zealand Unemployment", side=1, col=rgb(0, 0, 0),line=2) 
box()
par(new = TRUE)
plot(GNZ_unemp, GNZ_inf,
     xlab = "", ylab = "", pch = 16, axes = FALSE, col = rgb(1, 0, 0), main = '')
axis(4, at = seq(0, 20, by = 2.5), col=rgb(1, 0, 0),las=1, col.axis = rgb(1, 0, 0))
mtext("Google Inflation", side=4, col=rgb(1, 0, 0),line=2.5) 
axis(3, at = seq(0, 50, by = 5), col=rgb(1, 0, 0),las=1, col.axis = rgb(1, 0, 0))
mtext("Google Unemployment", side=3, col=rgb(1, 0, 0),line=2) 
abline(lm(GNZ_inf~GNZ_unemp), col = rgb(1, 0, 0), lwd = 4)
legend("bottom",legend=c("New Zealand","Google"),
       text.col=c(rgb(0, 0, 0),rgb(1, 0, 0)),pch=c(16,15),
       col=c(rgb(0, 0, 0),rgb(1, 0, 0)))
title("New Zealand Phillips Curve (Actual vs. Google)", line = 3.5)