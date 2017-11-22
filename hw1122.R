getwd()
setwd('D:/R/riii')
load('Statistics/applenews.RData')
str(applenews)
head(applenews)


install.packages('dbplyr')
install.packages('RSQLite')
library('dbplyr')
library('RSQLite')

