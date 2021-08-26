#RDS R-언어 전용파일 읽어서 저장하기
df_Rds <- data.frame(english=c(100,50,100),
                     math=c(50,60,100),
                     kor=c(100,50,60))
df_Rds
#Rds파일로 저장하기
saveRDS(df_Rds, file="df_Rds.rds")


#데이터프레임 만든 것을 삭제하기
rm(df_Rds)
df_Rds

#RDS파일 불러오기
df_Rds<- readRDS("df_Rds.rds")
df_Rds
