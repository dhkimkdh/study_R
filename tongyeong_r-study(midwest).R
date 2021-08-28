#ggplot2패키지 안의 miswest 데이터활용하기
#midwest --미국 동북중부 437개 지역의 인구통계 정보

#ggplot2패키지 인스톨하기
install.packages("ggplot2")
library(ggplot2)

midwest
summary(midwest)
head(midwest)

#data.frame 형태로 불러오기
midwest <- as.data.frame(ggplot2::midwest)
midwest

#poptotal이름을 total로 변경하기
#rename()함수 사용하기 위한 dplyr 패키지 인스톨
install.packages("dplyr")
library(dplyr)

#total이름으로 바꾸기
midwest <- rename(midwest, total = poptotal)
head(midwest)
#asian이름으로 바꾸기
midwest <- rename(midwest,asian = popasian)
head(midwest)

#midwest$asian_ratio <- (asian / total) *100
midwest$asian_ratio <- (midwest$asian / midwest$total) *100
head(midwest)

hist(midwest$asian_ratio)

#아시아 인구 백분율 평균 mean()함수 사용하기
mean(midwest$asian_ratio)

#조건문 파생변수 만들기
midwest$group <- ifelse(midwest$asian_ratio >= 0.4872462, "large", "small")
head(midwest)

#group 빈도표 생성
table(midwest$group)

midwest <- rename(midwest, asian_group = group)
table(midwest$asian_group)

#빈도 그래프 확인하기
qplot(midwest$asian_group)
