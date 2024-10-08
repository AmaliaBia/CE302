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

############data frame

# Exemplo de criação de Data Frame
meu_data_frame <- data.frame(
  nome = c("Alice", "Bob", "Carol", "Ana", "João", "Carlos", "Patrícia", "Leonardo"),
  idade = c(25, 30, 28, 20, 27, 50, 60, 45),
  salario = c(5000, 6000, 5500, 8000, 2000, 3500, 10000, 3800 ), 
  meio_de_transporte = c('onibus', 'bicicleta', 'onibus', 'carro', 'carro', 'onibus', 'onibus', 'bicicleta')
)

df<-data.frame(x=c(1:10),y=LETTERS[1:10])
df
meu_data_frame$nome
str(meu_data_frame)
class(meu_data_frame)
meu_data_frame[,"idade"]
meu_data_frame$idade
meu_data_frame[,-2] #exclue tao coluna
meu_data_frame$Bolo=c(T,F,F,T,T,T,F,F) #adiciona coluna
meu_data_frame
subconj=subset(meu_data_frame,idade>28)
subconj2=subset(meu_data_frame, idade>18 | !Bolo) #& é e, | é ou
dim(meu_data_frame)
nrow(meu_data_frame)
ncol(meu_data_frame)
summary(meu_data_frame)
result=by(meu_data_frame$salario, meu_data_frame$Bolo, mean)
genero=factor(c("masculino","feminino","masculino","feminino"))
estadiamento_doenca <- factor(c("Estágio I", "Estágio II", "Estágio I", "Estágio III", "Estágio IV"), 
                              levels = c("Estágio I", "Estágio II", "Estágio III", "Estágio IV"))

str(meu_data_frame)
meu_data_frame$genero = as.factor(meu_data_frame$genero)

meu_data_frame$genero
# Definindo fator com níveis específicos
cores <- factor(c("Vermelho", "Verde", "Azul"), levels = c("Vermelho", "Verde", "Azul", "Amarelo"))
cores
# Acessar níveis de um fator
niveis_cores <- levels(cores)
niveis_cores

##############tabela dupla entrada

# Exemplo de criação de tabela de dupla entrada
sexo <- c("Masculino", "Feminino", "Masculino", "Masculino", "Feminino")
cidade <- c("A", "B", "A", "B", "A")
tabela_contingencia <- table(sexo, cidade)
tabela_contingencia

tabela_contingencia2 <- table(meu_data_frame$meio_de_transporte, meu_data_frame$genero)
tabela_contingencia2

#######lendo dados externos
Queimadas_Q1 <- read.csv("/home/est/bao24/Downloads/Dataset_FireWatch_Brazil_Q1_2024.csv")
Queimadas_Q1
head(Queimadas_Q1)
Queimadas_Q2=read.csv("/home/est/bao24/Downloads/Dataset_FireWatch_Brazil_Q2_2024.csv")
Queimadas_Q3=read.csv("/home/est/bao24/Downloads/Dataset_FireWatch_Brazil_Q3_2024.csv")
Queimadas_Q2
Queimadas_Q3
head(Queimadas_Q2)
head(Queimadas_Q3)
Queimadas=rbind(Queimadas_Q1, Queimadas_Q2, Queimadas_Q3)
Queimadas
dim(Queimadas)
write.csv(Queimadas, "/home/est/bao24/Downloads/Queimadas.csv")


######exercicio
#Imprima na tela as 9 primeiras observaÃ§Ãµes.
head(Queimadas, n=9)

#Imprima as Ãºltimas 3 observaÃ§Ãµes.
tail(Queimadas, n=3)

#Quantas observaÃ§Ãµes temos?
nrow(Queimadas)

#Quantas variÃ¡veis temos?
ncol(Queimadas)

#Apresente o sumÃ¡rio dos dados.
summary(Queimadas)

#Apresente a estrutura dos dados.
str(Queimadas)

#Quantos biomas estÃ£o sendo afetados?
unique(Queimadas$bioma)
length(unique(Queimadas$bioma))
Queimadas$bioma=factor(Queimadas$bioma)
Queimadas$bioma
nlevels(Queimadas$bioma)
levels(Queimadas$bioma)

#Qual a mÃ©dia de avg_numero_dias_sem_chuva para os estados da regiÃ£o sul e da regiÃ£o norte?
sul=toupper(c("Parana","Santa Cataria", "Rio grande do sul"))
sul=subset(Queimadas, estado%in%sul)
mean(sul$avg_numero_dias_sem_chuva)

norte=c("acre", "amazonas", "para", "rondonia", "roraima")
norte=subset(Queimadas, estado%in%norte)
mean(norte$avg_numero_dias_sem_chuva)

######data table

install.packages("data.table")
library(data.table)
# Criar um data.table
mdt<- data.table(
  nome = c("Alice", "Bob", "Carol", "Ana", "João", "Carlos", "Patrícia", "Leonardo"),
  idade = c(25, 30, 28, 20, 27, 50, 60, 45),
  salario = c(5000, 6000, 5500, 8000, 2000, 3500, 10000, 3800 ), 
  meio_de_transporte = c('onibus', 'bicicleta', 'onibus', 'carro', 'carro', 'onibus', 'onibus', 'bicicleta'))
mdt

# Importar um data.table e comparando o tempo de importação com o read.csv

system.time(Queimadas <- fread("/home/est/bao24/Downloads/Queimadas.csv"))
system.time(Queimadas <- read.csv("/home/est/bao24/Downloads/Queimadas.csv"))
# Selecionar colunas e filtrar linhas
resultado <- mdt[idade > 25, .(nome, salario)]
resultado

# Agregar dados 
agregado <- mdt[, .(media_salario = mean(salario)),]
agregado

####tibble

require(tibble)
install.packages("tibble")
njlijuinij
