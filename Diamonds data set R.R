data("diamonds")
summary(diamonds)
nrow(diamonds)
names(diamonds)
?diamonds
qplot(x = diamonds$price, data = diamonds, binwidth = 500)
sum(diamonds$price < 500)
sum(diamonds$price < 250)
sum(diamonds$price >= 15000)
qplot(x = diamonds$price, data = diamonds, 
      xlab = "Price of Diamonds",
      ylab = "Diamond Count in Sample", 
      binwidth = 25, color = I('black'), fill = I('#099009')) + 
  scale_x_continuous(breaks = seq(326, 5000, 10), limits = c(326, 5000)) + 
  facet_wrap(~ diamonds$cut, ncol = 2)
by(diamonds$price, diamonds$cut, summary)
qplot(x = price, data = diamonds) + facet_wrap(~cut)
?facet_wrap
qplot(x = diamonds$price, data = diamonds, 
      xlab = "Price of Diamonds",
      ylab = "Diamond Count in Sample", 
      binwidth = 25, color = I('black'), fill = I('#099009'))+
  scale_x_continuous(breaks = seq(326, 5000, 10), limits = c(326, 5000)) +
  facet_wrap(~ diamonds$cut, ncol = 2, scales = "free_y")
# ggsave('priceHistogram.png')
library(ggplot2)
ggplot(aes(x = diamonds$price), data = diamonds, binwidth = 60) +
  geom_histogram() +
  scale_x_log10() +
  facet_wrap(~ diamonds$cut, ncol = 2)
by(diamonds$price, diamonds$color, summary)
qplot(x = color, y = price, data = diamonds, 
      geom = 'boxplot') + 
  coord_cartesian(ylim = c(0, 8000))
by(diamonds$price, diamonds$clarity, summary)
4214 - 911
7695 - 1860
qplot(x = carat, 
      data = diamonds,
      xlab = "Weight of diamond (carat)",
      ylab = "Number of diamonds in sample",
      geom = 'freqpoly') +
  scale_x_continuous()
table(diamonds$carat)
install.packages("tidyr")
install.packages("dyplr")
df <- read.csv("hiv.csv")
summary(df)
names(df)
ggplot(aes(x = df$X1989), data = df) + 
  geom_histogram() + xlab("Percentage of Populations with HIV 1989") + 
  ylab("HIV Counts")
ggplot(aes(x = df$X1979), data = df) + 
  geom_histogram() + xlab("Percentage of Populations with HIV 1979") + 
  ylab("HIV Counts") 
ggplot(aes(x = df$X1979), data = df) +
  geom_freqpoly()+ xlab("Percentage of Populations with HIV 1979") + 
  ylab("HIV Counts")
ggplot(aes(x = df$X1989), data = df, stat = "count") + 
  geom_histogram() + xlab("Percentage of Populations with HIV 1989") + 
  ylab("HIV Counts")
summary(df)
?ggplot
