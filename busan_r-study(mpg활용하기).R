#ggplot2패키지에 들어 있는 mpg데이터 활용하기
install.packages("ggplot2")
library("ggplot2")

#ggplot2의 mpg 데이터를 데이터 프레임 형태로 불러오기
mpg <- as.data.frame(ggplot2::mpg)

#Raw 데이터 앞부분 확인
head(mpg)
#Raw 데이터 뒷부분 확인
tail(mpg)
#행과 열의 수를 확인
dim(mpg)
#데이터의 속성 확인
str(mpg)
?mpg
#요약 통계량 출력하기
summary(mpg)
