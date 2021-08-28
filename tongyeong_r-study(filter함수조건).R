#자유자재로 데이터 가공하기
install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)

exam <- read.csv("csv_exam.csv")
exam
#요약 분석하기
summary(exam)

#1반학생의 데이타만 보여주기 %>% filter()이용
exam %>% filter(class==1)

# %>% 단축키 [ctrl+shift+M]

#2반 학생의 데이타만 보여주기 %>% filter()이용
exam %>% filter(class==2)

#!= 아닌 경우 데이터 보여지기
exam %>% filter(class !=1 )

#조건을 걸어서 데이터 보여주기
exam %>% filter(math >= 50)
