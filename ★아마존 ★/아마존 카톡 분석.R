library(KoNLP)
library(rJava)
library(wordcloud)
library(RColorBrewer)
library(stringr)
useSejongDic()

setwd("C:/Users/1pc/Desktop/★아마존 스타 클럽★님과 카카오톡 대화")
getwd()


t <- file('Talk_2019.5.24 01_00-1.txt')
text <- readLines(t)
close(t)
