# CE302
((((((((()))))))))
?mean
help("sd")
install.packages("ggplot2")
??mean
vignette("ggplot2")

########
#operadores aritimeticos

x <- 23
y <- 8

x+y
x-y
x*y
x/y
x**y 
x%%y ##modulo
x%/%y #divisao_inteira

###operadores relacionais

x==y
x!=y
x>y
x<y
x>=y
x<=y

##arredondamento
round(pi)
ceiling(pi)
floor(pi)
trunc(pi)

##vetores

vetor<- c(1,2,3,4,5,6,7)

vetor[6]
vetor[2:4]
vetor2<-c("a", "e", "i", "o", "u")
vetor3<-c(8,9,10,11,12,13,14)
vetor+vetor3
vetor-vetor3
vetor*vetor3
vetor/vetor3
class(vetor2)
is.integer(vetor2)
#tem mais is... like a quenstion

as.character(vetor)
#tem mais as... convertando tal para tal

altura<-c("1"=12,
          "2"=78,
          "3"=96,
          "4"=6)
class(altura)
attributes(altura)
names(altura)

#seq e rep

seq(1,50)
seq(from=100, 
    to=10, 
    by=-5)

rep(c(1, 2, 3), times = 3)
rep(c(1, 2, 3),each = 3)

#numeros aleatorios

runif(9)
n<-c(1,2,3,4,5,6,7,8,9)
l<-c("a", "b", "c", "d")
sample(l)
sample(n, size=11, replace=T)

##modificar

altura
altura[4]<-88
altura[2]<-NA
altura[-1]
append(altura, value=c("5", 189), after=2)
al2<-c("b" =8.5,
      "c" = 9.6)
altura<-c(altura, al2)
altura

#opecacao vetor
sum(vetor)
mean(vetor3)
sqrt(vetor)
length(vetor)
sort(vetor)
rev(vetor3)
unique(vetor3)

###########################################
vetor4 = c(1:100)
vetor5 = sqrt(vetor4)

plot(x = vetor4, 
     y = vetor5, 
     las = 1, 
     pch = 16,
     col="light blue")


x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
plot(x, y, type = "b")  

#########################################
nomes = c("Maria", "Ana", "Rafaela")

paste(nomes[1], "e", nomes[2], "são minhas amigas.")
paste(nomes[1], nomes[2], nomes[3], sep = "|")
paste(nomes, collapse = " ")
toupper(nomes)
tolower(nomes)
substr(x = nomes[1], start = 1,stop = 3)
gsub(pattern = "G", 
     replacement = "R",
     x = "Gato")

#############################inf diretorio e arq

getwd()
#read. le arquivos, seja de excel, texto padrao, etc

##############

data(iris)
iris
summary(iris)

################################matriz
matriz_linha = rbind(vetor_a, 
                     vetor_b)
matriz_linha

A <- matrix(c(1:9), 
            ncol = 3,
            byrow = TRUE)
A
A[,3]
A[which(A>5)]
