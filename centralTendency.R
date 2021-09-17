# installing dependencies
install.packages("readxl")
install.packages("modeest")
install.packages("tidyverse")

# load library
library(readxl)
library(modeest)
library(tidyverse)

# take dataset form xlsx
dataAges <- read_xlsx("Ex2_1-42.xlsx")

# taking the frequency
agesCount <- dataAges |>
  count(Ages)

# calculate the mean
theMean <- mean(dataAges$Ages) 
# calculate the median
theMedian <- median(dataAges$Ages)
#calculate the mode
theMode <- mfv(dataAges$Ages)

# create histogram from data
hist(dataAges$Ages,
     breaks = 32,
     xaxt = 'n',
     main = "Sample Populasi",
     xlab = "Umur",
     ylab = "Jumlah")
curve(dnorm(x,mean = mean(dataAges$Ages),sd=sd(dataAges$Ages)), 
      add=TRUE,col="red")
axis(side = 1, at=seq(0, 100, 5), labels=seq(0, 100, 5))



