# installing dependencies
# skip if already installed
install.packages("readxl")
install.packages("tidyverse")

# required library
library(readxl)
library(tidyverse)

dataAges <- read_xlsx("Ex2_1-42.xlsx")

zscore <- (dataAges$Ages - mean(dataAges$Ages))/sd(dataAges$Ages)
# make as object
dataZscore <- as.data.frame(zscore)

# make zscore table
tableZscore <- data.frame(x = dataAges$Ages,
                          y = dataZscore)

# display the zscore table
tableZscore
