##Grafico diagrama de cordas
install.packages("circlize")
install.packages("vcd")

V1<-c(rep("F",4),rep("M",5), "F","M")
V2<-c("I","I","B","I","B","R","B","R","I","P","B")

length(V1)
length(V2)

m<-data.frame(table(V1, V2))
library("circlize")
library("vcd")
chordDiagram(m,col = rainbow(8))

##Grafico Hexbin

install.packages("hexbin")
library("hexbin")
hh<-hexbin(iris$Sepal.Length,iris$Petal.Width)
plot(hh)
hh1<-hexbin(iris$Sepal.Length,iris$Sepal.Width)
plot(hh1)

##grafico de bolhas
X=c(10, 20, 35, 20, 40)
Y=c(1, 4, 5, 1, 5)
Z=c(41,22,20,11,50)
R=c(1,2,3,4,5)
C=c("lightblue","orange","lightpink","lightgreen","brown")


symbols(x=X,y=Y, circles=Z, inches=0.6, bg=C)
legend(30,4,c("cat1","cat2","cat3","cat4","cat5"),pch=19,cex=1.5,col=C)
text(X,Y,R,cex=2)

##mapa de calor

data(mtcars)
head(mtcars)
a=as.matrix(mtcars)
heatmap(a,col=heat.colors(256),Rowv = NA,Colv=NA)

url1 <- "https://www.metropoles.com/distrito-federal/fake-news-e-mudanca-do-clima-sao-temas-de-evento-para-estudantes-no-df"
url2 <- "datasets/master/dilma.txt"
arquivo <- readLines(paste0(url1,url2))
arquivo2 <- iconv(arquivo, from="", to="utf-8")
#("wordcloud")
#nstall.packages("tm")
require("wordcloud")
require("tm")
doc <- Corpus(VectorSource(arquivo2))
doc <- tm_map(doc,removePunctuation)
doc <- tm_map(doc,tolower)
doc <- tm_map(doc,removeWords,c(stopwords("portuguese"),"nco","ser"))
wordcloud(doc, col=c("gray","orange","red"))

################################################

install.packages("networkD3")
install.packages("dplyr")
library(networkD3)
library(dplyr)

nos=tibble(names=c("A","B", "c", "d","e","f","g","h","i","j","k","l","m","n"))
links=tibble(source=c(0,1,2,3,4,4,6,6,7,7,7,8,8,8), target=c(4,4,4,4,5,6,7,8,9,10,11,12,13,14), value=c(4.3,3.0,1.2,1.1,4.4,5.2,2.6,1.8,2.1,0.4,0.089,0.6,0.7,0.4))
S=sankeyNetwork(Links = links, Nodes=nos, Source = "source", Target = "target", Value = "value", NodeID = "names", units = "Bi", fontSize = 12, nodeWidth = 10)
S

#################################
