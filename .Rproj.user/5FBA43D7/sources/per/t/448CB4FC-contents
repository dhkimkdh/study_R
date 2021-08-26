#패키지 설치
install.packages("ggplot2")
library(ggplot2)

x <- c(1,0,5,6)
x
qplot(x)

str5 <- c("hello", "world", "is", "good")
str5
paste(str5, ",")

str6 <- c("hello world is good")
str6

paste(str6, ",")

paste(str5, collapse=",")
paste(str5, collapse="")
paste(str5, collapse=" ")

qplot(data=mpg, x = hwy)
sum(mpg)
qplot(data=mpg, x=drv, y = hwy)
qplot(data=mpg, x=drv, y=hwy, geom="line")
qplot(data=mpg, x=drv, y=hwy, geom="bolxplot")
qplot(data=mpg, x=drv, y=hwy, geom="boxplot")
qplot(data=mpg, x=drv, y=hwy, geom="boxplot", colour=drv)

scores <- c(80,60,70,50,90)
scores

mean(scroes)
mean(scores)

avg <- mean(scores)
avg



english <- c(50,10,5,100)
english
math <- c(60,30,70,80)
math
name <- c("개똥이", "홍길동", "마초", "태권")

#DataFrame 만들기
df_class <-data.frame(name, english, math)
df_class
#분석하기
#df_class의 데이터표에서 english의 평균값 구하기
mean(df_class$english)
mean(df_class$math)

#데이터 프레임 한번에 만들기
df_class2 <-data.frame(name = c("개똥이2", "홍길동2", "마초2", "태권2"),
                       english = c(50,10,5,100),
                       math = c(60,30,70,100))
df_class2
max(df_class2$english)
min(df_class2$math)
