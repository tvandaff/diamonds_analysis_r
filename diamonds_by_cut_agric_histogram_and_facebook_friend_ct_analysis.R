data("diamonds")
library(ggplot2)

ggplot(aes(x = price), data = diamonds) + 
  facet_wrap(~ color) + 
  geom_histogram(aes(color = cut))

ggplot(aes(x = table, y = price), data = diamonds) + 
  geom_point(aes(color = cut))

ideal_diamonds <- subset(diamonds, cut = "Ideal")
with(ideal_diamonds, summary(table))
prem_diamonds <- subset(diamonds, cut = "Premium")
with(prem_diamonds, summary(table))

diamonds <- transform(diamonds, volume = x*y*z)
ggplot(aes(x = volume, y = price), data = diamonds) + 
  geom_point(aes(color = clarity)) + 
  scale_y_log10() + 
  xlim(0, quantile(diamonds$volume, .99))

pf <- read.csv("C:/Users/7240/Documents/Udacity Part 2/pseudo_facebook.tsv", sep = '\t')
pf <- transform(pf, prop.initiated = ifelse(friend_count > 0, friendships_initiated / friend_count, 0))
tail(fb\\pf, 20)
?ifelse

pf$year_joined <- floor(2014 - pf$tenure/365)
pf$year_joined.bucket <- cut(pf$year_joined, c(2004, 2009, 2011, 2012, 2014)
ggplot(aes(x = tenure, y = prop.initiated), data = pf) + 
  geom_line(aes(color = year_joined.bucket), stat = 'summary', fun.y = median) + 
  geom_smooth()
with(subset(pf, year_joined.bucket = "(2012, 2014]"), summary(prop.initiated))

data("diamonds")
ggplot(aes(x = cut, y = price/carat), data = diamonds) + 
  facet_wrap(~ clarity) + 
  geom_point(aes(color = color)) 

gdp <- read.csv("C:/Users/7240/Documents/Agriculture (p of GDP).csv")
ggplot(aes(x = X2011), data = gdp) + 
  geom_histogram()
ggplot()
