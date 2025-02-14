#Comentário sobre o nosso código
1+1
2+2
3*4

#Usar para entender algum comando não conhecido
help("mean")
#ou usar \/ para entender (opção para o help)
?mean

#Para saber em qual pasta estou trabalhando
getwd()
#~/ pasta raiz do R --> "C:/Users/mateu/Documents" nesse caso

#Definindo o diretório aonde vou trabalhar
#Alterar a barra invertida --> R aceita com /
setwd("C:/Users/mateu/Desktop/Aulas R")
#\/ a parte do console muda também --> caminho para onde está apontando
#\/ se usar a seta do lado do caminho aparece a pasta do lado direito
#Sempre definir o diretório antes de trabalhar com o R para usar os arquivos neste diretório
#Contribuição grande para usar pacotes
#Todos os pacotes homologados estáo no CRAN

#Instalação de pacotes \/
#Statics Exchange
#Stack Overflow
#/\ buscar para saber qual usar
install.packages("dplyr")
#ou pode ser usado também a parte de Packages no lado direito e em Install
library(dplyr)
#/\ para carregar a biblioteca que será utilizada ou é possível clicar no checkbox da library

#R é case sensitive
a = "A"
b = "A"

a == b
#FALSE se maiúsculo x minúsculo
#TRUE  se maiúsculo x maiúsculo

6*6
7/2
(4*(6+2))/4
4/0
#/\ Inf === Infinito (divisão por zero ou limitação da linguagem)
0/0
#/\ NaN === Indeterminação
pi
(sin(pi/2))*3
#/\ Algumas funções predefinidas, como pi, por exemplo
pi = "texto"
#/\ É possível alterar as funções predefinidas

#Operadores lógicos \/
#<
#>
#==
#!=
#!
1 <  1
1 <= 1
1 == 2
1 != 2
!TRUE

#[1] para indicar a saída de uma linha no console

#Objeto === variável que foi criada
#Olhar no Enviroment (Ambiente) ao lado superior direito para entender os valores atuais das variáveis
a = 2

minha.variavel1 = 30
minha.variavel2 = 20

minha.variavel1 * minha.variavel2

#Remove variável (rm === remove) --> para gerenciar a memória
rm(b)
#Ou pode ser utilizado a vassourinha do lado superior direito na aba Enviroment

# if(<condicao1>) (
#   "Fa�a algo"
# ) else if(<condicao2>) (
#   "Fa�a outra coisa"
# ) else (
#   "Fa�a isso ent�o"
# )

#EXEMPLO \/
if(a == 2) (
  a = 3
#OPCIONAIS \/
) else if(a == 3) (
  a = 4
) else (
  a = 5
)

#A = TRUE
#B = FALSE
#1
#0

#\/ N�O S�O INTERPRET�VEIS LOGICAMENTE
#NA
#NaN

#LA�OS \/
for(i in 1:4) {
  valor = i + 10
  print(valor)
}

#CRIA��O DE LISTA \/
lista = c("latic�nios", "frutas", "produtos de limpeza")

#LA�O COM LISTA \/
for(i in lista) (
  print(paste(i, " - ok"), sep = "")
)

#FUN��ES \/
quadrado = function(quad) {
  #temp = quad * quad
  return(quad * quad)
}

quadrado(5)

quadrado(10)

quadrado(200)

projeto = function(horas, pph = 40) {
  vlr.liq = horas * pph
  if(horas > 100) {
    vlr.liq = vlr.liq * .9
  }
  return(vlr.liq)
}

projeto(99)
projeto(99, 100)
projeto(100, 100)
projeto(101, 100)

#ESTRUTURAS DE DADOS
#-----------------------------------|
#    |  Homog�neos   | Heterog�neos |
#-----------------------------------|
#    |               |              |
# 1D | vetor At�mico |    Lista     |
#    |               |              |
#-----------------------------------|
#    |               |              |
# 2D |    Matriz     |  Data Frame  |
#    |               |              |
#-----------------------------------|
#    |               |              |
# nD |    Array      |              |
#    |               |              |
#-----------------------------------|

#Vetor
#Lista com mais de um valor dentro de um intervalo nomeado
vetor = 1:5 (exemplo)
vetor2 = 5:10
2*vetor2
#/\ executa posi��o por posi��o
sum(vetor)
#/\ executa e retorna um valor apenas
vetor.texto = c("laticinios", "produtos de limpeza", "frutas")
#/\ para iniciar um vetor de textos
vetor.sequencia = seq(1, 5, by = 0.5)
#/\ para criar um vetor de sequ�ncia com intervalo
vetor.repeticao = rep(1:2, times = 3)
#/\ para criar um vetor de repeti��o com quantidade de vezes repetidas

x = c(5, 4, 9, 6, 8, 9, 23, 9, 9)

sort(x)
#/\ ordena o vetor
sort(x, decreasing = T)
#/\ ordena de tr�s para frente
#TRUE === T
table(x)
#/\ contagem dos valores do vetor
#/\ funciona com texto tamb�m
rev(x)
#/\ inverte o vetor
unique(x)
#/\ seleciona somente os valores �nicos do vetor
x[4]
#/\ seleciona um dado do vetor na posi��o indicada (COME�A NA PRIMEIRA POSI��O)
x[-4]
#/\ seleciona todos menos a posi��o informada
x[2:5]
#/\ seleciona o intervalo de valores desejados
x[-(2:5)]
#/\ N�O seleciona o intervalo de valores desejados
x[c(1, 3, 5, 7)]
#/\ seleciona v�rias posi��es desejadas
x[x == 23]
x[x > 6]
#/\ seleciona os valores que atendem a condi��o (subsetting por valor)

vetor1 = c(2, 4, 6)
vetor2 = c(8, 10, 6)
vetor3 = c(8, 10, 12, 14, 16, 18)

vetor1 * vetor2
vetor1 * vetor3
#opera��es matem�ticas com o vetor
#vetores de tamanho igual == posi��o1 * posi��o2
#vetores de tamanhos diferentes === posi��o1 * posi��o2 (reinicia os c�lculos)

#Matriz

#Subsetting \/

matriz1 = matrix(1:12, nrow = 3, ncol = 4)
matriz2 = matrix(1:6, nrow = 3, ncol = 4)
#/\ cria uma matriz com o intervalo (x:y), quantidade de linhas e quantidade de colunas
#/\ poss�vel ver a tabela pelo Enviroment (�cone de tabela)
#/\ preenche de cima para baixo, esquerda para a direita

#\/ subsetting com duas posi��es --> [linhas, colunas]
matriz1[2, ]
matriz1[, 1]
matriz1[3, 2]

#\/transpor matriz
t(matriz1)

#Lista
#/\ posso ter v�rios tipos de objetos por posi��o na minha lista
lista1 = list(posi1 = 1:5, posi2 = c("a", "b", "c"))
#/\ criar uma lista
lista1[2]
#/\ retorna a segunda posi��o da minha lista (com um objeto do tipo lista)
lista1[[2]]
#/\ retorna os valores dentro da lista
sum(lista1[1])
#/\ tentando somar o objeto lista --> ERRO
sum(sum(lista1[[1]]))
#/\ tentando somar os valores dentro da lista --> SUCESSO
#/\ subsetting simples seleciona lista
#/\ subsetting simples seleciona valores da lista

lista1$posi1
sum(lista1$posi1)
lista1$posi2
#/\ seleciona valores dentro da lista com $nome da coluna

#Dataframe --> mais parecido com tabelas
df = data.frame(ColunaA = 1:3, Coluna2 = c("a", "b", "c"))
#/\ maior parte da manipula��o utiliza o dataframe
View(df)
#/\ para ver o dataframe, poss�vel clicar no �cone em enviroment tamb�m
head(df)
#/\ retorna 6 primeiras linhas
tail(df)
#/\ retorna 6 �ltimas linhas
df[ , 2]
df[2,  ]
df[2, 2]
#/\ para selecionar o dataframe
nrow(df)
#/\ para saber quantidade de linhas
ncol(df)
#/\ para saber quantidade de colunas

#\/ definindo diret�rio de trabalho
setwd('D:/OneDrive - Fatec Centro Paula Souza/Documentos/Estudos/FIA/LAABD4/Introdu��o ao R/Aulas R/introducao_ao_R')

#\/ carregando base de dados
base.rh.csv = read.csv("Base RH.csv")
#base.rh.csv = read.csv("Base RH.csv", sep = ";")
#/\ sep = ";" <-- para definir o separador
#para ver a base de dados usar o Enviroment do lado direito

#para ler arquivo RDS (formato de arquivo do pr�prio R, objeto para salvar base de dados pelo R)
base.rh.rds = readRDS("Base RH.RDS")

#para ler arquivo xlsx (Excel)
#instalar package openxlsx
install.packages("openxlsx", dependencies = T)
#usar package openxlsx
library(openxlsx)
#n�o usar package openxlsx
detach("package:openxlsx", unload = TRUE)
#ou usar lado inferior direito Packages e tickar ou destickar

#para ler arquivo xlsx (Excel) --> definir a planilha dentro da pasta de trabalho Excel \/
base.rh.xlsx = read.xlsx("Base RH.xlsx", sheet = "Base RH")

#usar bot�o de expans�o do lado superior direito para ver base de dados (colunas e tipos de valores)
#ou usar fun��o head para ver seis primeiras linhas da base de dados
head(base.rh.csv)
#ou usar fun��o tail para ver seis �ltimas linhas da base de dados
tail(base.rh.csv)

#class mostra tipo de objeto
class(base.rh.csv)
class(base.rh.rds)
class(base.rh.xlsx)

#retorna medidas b�sicas de posi��o do data.frame
summary(base.rh.csv)

#min --> menor valor
#primerio quartil --> 25%
#mediana --> ponto central das linhas --> 50% | segundo quartil
#/\ caso o total de linhas seja par, faz a media dos dois numeros centrais
#media
#terceiro quartil --> 75%
#max --> maior valor

#selecionar um tipo de valor na base de dados
# ", " para pegar apenas linhas
base.rh.feminino = base.rh.csv[base.rh.csv$Genero == "Feminino", ]
summary(base.rh.feminino)
#/\ subsetting da base

#pacotes para sa�das gr�ficas
install.packages("dplyr")
library(dplyr)
install.packages("skimr")
library(skimr)
install.packages("ggplot2")
library(ggplot2)

#visualizar as medidas dos dados (saber o que se tem em m�os)
skim(base.rh.csv)

#fazer gr�ficos melhores visualmente (Plots lado inferior direito)
ggplot(base.rh.csv)+
  geom_histogram(mapping = aes(x = SalarioMensal))
#/\ ver distribui��o de valores
# aes serve para dizer o que � o eixo X e o que � o eixo Y (aestetic)
ggplot(base.rh.csv, mapping = aes(x = SalarioMensal, colour = Satisfacao))+
  geom_freqpoly(binwidth = 1000)

#transformar vari�vel num�rica em categ�rica
base.rh.csv$Satisfacao = as.factor(base.rh.csv$Satisfacao)

#count --> do pacote dplyr
#conta quantidade por categoria e s� funciona ap�s converter vari�vel para factor
base.rh.csv %>%
  count(Satisfacao)

ggplot(base.rh.csv, mapping = aes(x = SalarioMensal,
                                  y = Satisfacao))+
  geom_boxplot()+
  coord_flip()
#/\ serve muito para mensurar se existe outlier (ind�cios) --> apresenta limites inferiores e superiores
#outliers --> pontos fora da curva
#coord_flip() --> transforma o gr�fico de horizontal para vertical