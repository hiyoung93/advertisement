library(KoNLP)
library(rJava)
library(wordcloud)
library(RColorBrewer)
library(stringr)
useSejongDic()


setwd("C:/Users/1pc/Desktop/★아마존 스타 클럽★님과 카카오톡 대화")
getwd()


# 파일 읽기
kt <- readLines('Talk_2019.5.24 01_00-3.txt') 

#읽은 파일 라인마다 명사단어들만 남기기
ktN <- sapply(ktL, extractNoun, USE.NAMES=F);ktN 

#명사만 단어만 가지고 오기
ktL<- unlist(kt) ;ktL

# 위에꺼 확인해보기 
head(sort(kt, decreasing=T),50)

#2자 이상의 단어만 가지고 오기
kt <- Filter(function(x) {
  nchar(x)>=2
},kt) ;kt

#필요없는거 지우기
rm <- unlist(kt)
kt <- str_replace_all(rm,"[^[:alpha:]]","")#특수문자 지우기
kt <- gsub('\\d+','',kt)#숫자지우기

#잘지워졌는지 확인해보기
write(unlist(kt),'kt03.txt')
ktdata <- read.table('kt03.txt')
wordcount <- table(ktdata)
head(sort(kt, decreasing=T),30)

#따로 메모장에 있는 문자지우기
txt <- readLines("ktrm.txt");txt
for(i in 1:length(txt)){
  kt <- gsub((txt[i]),'',kt)
}

kt <- unlist(kt) ;kt



head(sort(kt, decreasing=T),30)
