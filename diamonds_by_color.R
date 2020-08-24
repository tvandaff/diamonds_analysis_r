data("diamonds")
library(dplyr)
library(ggplot2)

ggplot(aes(x = diamonds$x, y = diamonds$price), data = diamonds) + 
  geom_point()
cor.test(diamonds$x, diamonds$price)
cor.test(diamonds$y, diamonds$price)
cor.test(diamonds$z, diamonds$price)

ggplot(aes(x = diamonds$depth, y = diamonds$price), data= diamonds) + 
  geom_point()

ggplot(data = diamonds, aes(x = depth, y = price)) + 
  geom_point(alpha = 1/100, position = position_jitter(h = 0)) + 
  scale_x_continuous(breaks = 2)
min(diamonds$depth)
max(diamonds$depth)
cor.test(diamonds$depth, diamonds$price)

ggplot(aes(x = diamonds$carat, y = diamonds$price), data = diamonds) + 
  geom_point() + 
  xlim(0, quantile(diamonds$carat, .99)) +
  ylim(0, quantile(diamonds$price, .99))

diamonds.volume <- diamonds$x*diamonds$y*diamonds$z
ggplot(aes(x = diamonds$depth, y = diamonds.volume), data= diamonds) + 
  geom_point()

diamonds2 <- subset(diamonds, diamonds.volume != 0 & diamonds.volume < 800)
diamonds2.volume <- diamonds2$x*diamonds2$y*diamonds2$z
with(diamonds2, cor(diamonds2.volume, y = price))
ggplot(aes(x = diamonds2.volume, y = diamonds2$price), data = diamonds2) + 
  geom_point(alpha = 1/50, position = position_jitter(h = 0)) + 
  geom_smooth(method = "lm", formula = y ~ x, size = 1)

library(dplyr)
clarity <- group_by(diamonds, clarity)
diamondsByClarity <- summarise(clarity,
                               mean_price = mean(price), 
                               median_price = median(price), 
                               min_price = min(price),
                               max_price = max(price),
                               n = n())
head(diamondsByClarity)

data(diamonds)
library(dplyr)
library(gridExtra)

diamonds_by_clarity <- group_by(diamonds, clarity)
diamonds_mp_by_clarity <- summarise(diamonds_by_clarity, mean_price = mean(price))

diamonds_by_color <- group_by(diamonds, color)
diamonds_mp_by_color <- summarise(diamonds_by_color, mean_price = mean(price))

p1 <- barplot(height = diamonds_mp_by_clarity$mean_price, 
              names.arg = diamonds_mp_by_clarity$clarity)

p2 <- barplot(height = diamonds_mp_by_color$mean_price, 
              names.arg = diamonds_mp_by_color$color)

pf <- read.csv("indicator.csv")
head(pf)
ggplot(aes(x = pf$X2005, y = pf$X), data= pf) + 
  geom_point()
ggplot(aes(x = pf$X2005), data= pf) + 
  geom_freqpoly()

