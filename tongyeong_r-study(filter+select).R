#필요한 변수만 추출하기
exam <- read.csv("csv_exam.csv")
head(exam)

#select()함수를 사용해서 math변수 데이터만 추출하기
exam %>% select(math)

#select()함수를 사용해서 math변수 데이터만 추출하기head()
exam %>% select(math) %>% head(10)

#math,english,science 데이터 추출하기
exam %>% select(math,english,science) %>% head()

#특정 변수명을 제외하고 데이터 추출하기
exam %>% select(-math) %>% head()

#-math, -english
exam %>% select(-math, -english) %>% head()

#filter(), select()함수 조합하기
exam %>% select(math) %>% filter(class==1)

exam %>% filter(class==1) %>% select(math)

#가독성 있게 꾸미기
exam %>% 
  filter(class==1) %>% 
  select(math) %>% 
  head()
#오름차순으로 정렬하기arrange()

exam %>% 
  arrange(math) %>% 
  head()

#내림차순으로 정렬하기 arrange()dsc()
exam %>% 
  arrange(desc(math)) %>% 
  head()

#class오름차순 보기
exam %>% arrange(class) %>% head()

#여러개의 변수를 정해서 오름차순을 구분하자
exam %>% arrange(class, math) %>% head(10)

head(exam)

#mutate()함수를 사용하여 변수 추가하기
exam %>% 
  mutate(total = math + english + science) %>% 
  head(10)

#exam데이터를 확인해보자
head(exam, 10)

#test 변수를 넣어보자
exam %>% mutate(test = ifelse(math >=60,"pass", "fail")) %>% 
  head()

#오름차순까지 해보자
exam %>% mutate(total = math +english+ science) %>% 
  arrange(total) %>% 
  head()
