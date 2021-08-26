#외부파일로 저장해보자
#csv파일로 저장하는 것..패키지 인스톨은 필요없음
#데이타프레임 한번에 만들기
df_save_csv <- data.frame(name = c("개똥이", "천재", "바보"),
                          math = c(80, 90, 50),
                          english= c(50, 100, 30))
df_save_csv
#만든 것을 저장하자
write.csv(df_save_csv,file="df_save_csv.csv")

hist(df_save_csv$math)
