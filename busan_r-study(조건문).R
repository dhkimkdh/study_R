#mpg조건문 만들어 기준값 이상이면 합격, 아니면 불합격 만들기
mpg
head(mpg)

#total_avg 변수 이용하기 (cty+hwy)/2

#summary요약통계 파악하여 값의 빈도 수를 확인할 수 있는 histogram 생성
summary(mpg$total_avg)

#히스토그램 막대그래프 
hist(mpg$total_avg)

#합격 판정 변수 만들기
mpg$test <- ifelse(mpg$total_avg >= 20, "pass", "fail")
head(mpg,10)

#합격 빈도표 생성 
table(mpg$test)

#막대 그래프로 빈도 표현하기
qplot(mpg$test)
