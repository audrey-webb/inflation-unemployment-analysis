#See the relationship between Unemployment and Inflation between 
#different countries using World Bank data

par(mfrow = c(2, 2))
par(mar = c(5, 4, 4, 2) + 0.1)
#Canada
plot(world_unemployment$Canada, world_inflation$Canada, 
     main = "Unemployment vs. Inflation (Canada)", 
     xlab = "Canada Unemployment Rate", ylab = "Canada Inflation Rate", pch = 15)
abline(lm(world_inflation$Canada~world_unemployment$Canada), 
       col = rgb(1, 0, 0), lwd = 4)
cor(world_unemployment$Canada, world_inflation$Canada)

#New Zealand
plot(world_unemployment$`New Zealand`, world_inflation$`New Zealand`, 
     main = "Unemployment vs. Inflation (New Zealand)", 
     xlab = "New Zealand Unemployment Rate", 
     ylab = "New Zealand Inflation Rate", pch = 15)
abline(lm(world_inflation$`New Zealand`~world_unemployment$`New Zealand`), 
       col = rgb(1, 0, 0), lwd = 4)
cor(world_unemployment$`New Zealand`, world_inflation$`New Zealand`)

#United States
plot(world_unemployment$`United States`, world_inflation$`United States`, 
     main = "Unemployment vs. Inflation (United States)", 
     xlab = "US Unemployment Rate", ylab = "US Inflation Rate", pch = 15)
abline(lm(world_inflation$`United States`~world_unemployment$`United States`), 
       col = rgb(1, 0, 0), lwd = 4)
cor(world_unemployment$`United States`, world_inflation$`United States`)

#South Africa
plot(world_unemployment$`South Africa`, world_inflation$`South Africa`, 
     main = "Unemployment vs. Inflation (South Africa)", 
     xlab = "South Africa Unemployment Rate", 
     ylab = "South Africa Inflation Rate", pch = 15)
abline(lm(world_inflation$`South Africa`~world_unemployment$`South Africa`), 
       col = rgb(1, 0, 0), lwd = 4)
cor(world_unemployment$`South Africa`, world_inflation$`South Africa`)