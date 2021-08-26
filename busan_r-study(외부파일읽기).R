#외부 데이터 이용하기
install.packages("readxl")
library(readxl)

df_exam <- read_excel("excel_exam.xlsx")
df_exam
mean(df_exam$english)

df_exam_error <- read_excel("excel_exam_novar.xlsx")
df_exam_error

#col_names = F 파라미터를 사용해서 컬럼명을 가지고 오지 말자
df_exam_error <-read_excel("excel_exam_novar.xlsx", col_names = F)
df_exam_error

#csv파일을 읽어오고 저장을 해보자
df_csv <-read.csv("csv_exam.csv")
df_csv
df_csv <-read.csv("csv_exam.csv")
df_csv
df_csv <-read.csv("csv_exam.csv")
df_csv
df_csv <-read.csv("csv_exam.csv")
df_csv
df_csv <-read.csv("csv_exam.csv", stringsAsFactors = F)
df_csv
