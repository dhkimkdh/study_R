#여러 조건을 충족하는 함수를 사용해서 data행 추출하기
#패키지는 지금 설치되어 있으니 설치하지 않고 해보자

#csv파일을 읽어오자
exam <- read.csv("csv_exam.csv")
exam

#학급(class)이 1이고 영어성적(englisth)이 80이상인 데이터를 얻자
exam %>% filter(class ==1 & english >=80)

#학급(class)이 1이거나 수학성적(math)이 50이상인 데이터를 얻자
exam %>% filter(class==1 | math>=90)

#학급이 1,2,3 중에 하나가 해당하면 데이터추출
exam %>% filter(class==1 | class==2 | class==3)

#학급이 1,3,5 중에 하나가 해당하면 데이터 추출
#매칭연산자 %in%을 사용해보자
exam %>% filter(class %in% c(1, 3, 5))

#등급변수 만들어 등급을 매기자 

#새로운 데이터 만들기
class1 <- exam %>% filter(class==1)
class1
mean(class1$math)

class2 <- exam %>% filter(class==2)
class2

exam
