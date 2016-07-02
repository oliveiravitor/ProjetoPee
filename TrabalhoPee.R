setwd("C:/RStudio")

arquivo <- read.csv("testeword.csv", sep = ",", header=T)
arquivo <- read.csv("testewriter.csv", sep = ",", header=T)

median(testewriter$V2)

mean(testeword$V4) #media

median(testeword$V4) #mediana

sd(testeword$V4)  #desvio PadrÃ£o

sqrt(testeword$V4)

max(testeword$V4) #maximo

min(testeword$V4) #minimo

max(testeword$V4)-min(testeword$V4) #Amplitude

sd(testeword$V4)/sqrt(30)#Erro - padrÃ£o

ggplot(testeword, aes(v2)) +geom_histogram()

sd(testeword$V4)/mean(testeword$V4)*100 #Coeficiente da VariaÃ§Ã£o

summary(testeword$V4)

t.test(testeword$V4,testewriter$V4, alternative = "greater") 

ggplot(testewriter, aes(x=V4)) + geom_histogram() + xlab("Tempo de Execução do Writer em 1024Kb ") + ylab("Frequência")


