#변수명 바꾸기
#dplyr 패키지 사용 - rename() 함수

install.packages("dplyr")
library(dplyr)

df_raw <- data.frame(var1 = c(1,2,3),
          var2 = c(3,6,7))
df_raw

#복사본을 만들기

df_new <- df_raw
df_new

#변수명을 바꾸자
df_new <- rename(df_new, v2 = var2)
df_new

#실습 
install.packages("ggplot2")
library(ggplot2)

df_mpg <-as.data.frame(ggplot2::mpg)
df_mpg

#mpg 복사본 
df_mpgnew <- df_mpg
df_mpgnew

#mpg 변수명 바꾸기 city =cty , highway = hwy
df_mpgnew <- rename(df_mpgnew,city = cty, highway = hwy)
head(df_mpgnew)
