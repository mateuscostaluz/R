#Coment√°rio sobre o nosso c√≥digo
1+1
2+2
3*4

#Usar para entender algum comando n√£o conhecido
help("mean")
#ou usar \/ para entender (op√ß√£o para o help)
?mean

#Para saber em qual pasta estou trabalhando
getwd()
#~/ pasta raiz do R --> "C:/Users/mateu/Documents" nesse caso

#Definindo o diret√≥rio aonde vou trabalhar
#Alterar a barra invertida --> R aceita com /
setwd("C:/Users/mateu/Desktop/Aulas R")
#\/ a parte do console muda tamb√©m --> caminho para onde est√° apontando
#\/ se usar a seta do lado do caminho aparece a pasta do lado direito
#Sempre definir o diret√≥rio antes de trabalhar com o R para usar os arquivos neste diret√≥rio
#Contribui√ß√£o grande para usar pacotes
#Todos os pacotes homologados est√°o no CRAN

#Instala√ß√£o de pacotes \/
#Statics Exchange
#Stack Overflow
#/\ buscar para saber qual usar
install.packages("dplyr")
#ou pode ser usado tamb√©m a parte de Packages no lado direito e em Install
library(dplyr)
#/\ para carregar a biblioteca que ser√° utilizada ou √© poss√≠vel clicar no checkbox da library

#R √© case sensitive
a = "A"
b = "A"

a == b
#FALSE se mai√∫sculo x min√∫sculo
#TRUE  se mai√∫sculo x mai√∫sculo

6*6
7/2
(4*(6+2))/4
4/0
#/\ Inf === Infinito (divis√£o por zero ou limita√ß√£o da linguagem)
0/0
#/\ NaN === Indetermina√ß√£o
pi
(sin(pi/2))*3
#/\ Algumas fun√ß√µes predefinidas, como pi, por exemplo
pi = "texto"
#/\ √â poss√≠vel alterar as fun√ß√µes predefinidas

#Operadores l√≥gicos \/
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

#[1] para indicar a sa√≠da de uma linha no console

#Objeto === vari√°vel que foi criada
#Olhar no Enviroment (Ambiente) ao lado superior direito para entender os valores atuais das vari√°veis
a = 2

minha.variavel1 = 30
minha.variavel2 = 20

minha.variavel1 * minha.variavel2

#Remove vari√°vel (rm === remove) --> para gerenciar a mem√≥ria
rm(b)
#Ou pode ser utilizado a vassourinha do lado superior direito na aba Enviroment

# if(<condicao1>) (
#   "FaÁa algo"
# ) else if(<condicao2>) (
#   "FaÁa outra coisa"
# ) else (
#   "FaÁa isso ent„o"
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

#\/ N√O S√O INTERPRET¡VEIS LOGICAMENTE
#NA
#NaN

#LA«OS \/
for(i in 1:4) {
  valor = i + 10
  print(valor)
}

#CRIA«√O DE LISTA \/
lista = c("laticÌnios", "frutas", "produtos de limpeza")

#LA«O COM LISTA \/
for(i in lista) (
  print(paste(i, " - ok"), sep = "")
)

#FUN«’ES \/
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
#    |  HomogÍneos   | HeterogÍneos |
#-----------------------------------|
#    |               |              |
# 1D | vetor AtÙmico |    Lista     |
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
#/\ executa posiÁ„o por posiÁ„o
sum(vetor)
#/\ executa e retorna um valor apenas
vetor.texto = c("laticinios", "produtos de limpeza", "frutas")
#/\ para iniciar um vetor de textos
vetor.sequencia = seq(1, 5, by = 0.5)
#/\ para criar um vetor de sequÍncia com intervalo
vetor.repeticao = rep(1:2, times = 3)
#/\ para criar um vetor de repetiÁ„o com quantidade de vezes repetidas

x = c(5, 4, 9, 6, 8, 9, 23, 9, 9)

sort(x)
#/\ ordena o vetor
sort(x, decreasing = T)
#/\ ordena de tr·s para frente
#TRUE === T
table(x)
#/\ contagem dos valores do vetor
#/\ funciona com texto tambÈm
rev(x)
#/\ inverte o vetor
unique(x)
#/\ seleciona somente os valores ˙nicos do vetor
x[4]
#/\ seleciona um dado do vetor na posiÁ„o indicada (COME«A NA PRIMEIRA POSI«√O)
x[-4]
#/\ seleciona todos menos a posiÁ„o informada
x[2:5]
#/\ seleciona o intervalo de valores desejados
x[-(2:5)]
#/\ N√O seleciona o intervalo de valores desejados
x[c(1, 3, 5, 7)]
#/\ seleciona v·rias posiÁıes desejadas
x[x == 23]
x[x > 6]
#/\ seleciona os valores que atendem a condiÁ„o (subsetting por valor)

vetor1 = c(2, 4, 6)
vetor2 = c(8, 10, 6)
vetor3 = c(8, 10, 12, 14, 16, 18)

vetor1 * vetor2
vetor1 * vetor3
#operaÁıes matem·ticas com o vetor
#vetores de tamanho igual == posiÁ„o1 * posiÁ„o2
#vetores de tamanhos diferentes === posiÁ„o1 * posiÁ„o2 (reinicia os c·lculos)

#Matriz

#Subsetting \/

matriz1 = matrix(1:12, nrow = 3, ncol = 4)
matriz2 = matrix(1:6, nrow = 3, ncol = 4)
#/\ cria uma matriz com o intervalo (x:y), quantidade de linhas e quantidade de colunas
#/\ possÌvel ver a tabela pelo Enviroment (Ìcone de tabela)
#/\ preenche de cima para baixo, esquerda para a direita

#\/ subsetting com duas posiÁıes --> [linhas, colunas]
matriz1[2, ]
matriz1[, 1]
matriz1[3, 2]

#\/transpor matriz
t(matriz1)

#Lista
#/\ posso ter v·rios tipos de objetos por posiÁ„o na minha lista
lista1 = list(posi1 = 1:5, posi2 = c("a", "b", "c"))
#/\ criar uma lista
lista1[2]
#/\ retorna a segunda posiÁ„o da minha lista (com um objeto do tipo lista)
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
#/\ maior parte da manipulaÁ„o utiliza o dataframe
View(df)
#/\ para ver o dataframe, possÌvel clicar no Ìcone em enviroment tambÈm
head(df)
#/\ retorna 6 primeiras linhas
tail(df)
#/\ retorna 6 ˙ltimas linhas
df[ , 2]
df[2,  ]
df[2, 2]
#/\ para selecionar o dataframe
nrow(df)
#/\ para saber quantidade de linhas
ncol(df)
#/\ para saber quantidade de colunas

#\/ definindo diretÛrio de trabalho
setwd('D:/OneDrive - Fatec Centro Paula Souza/Documentos/Estudos/FIA/LAABD4/IntroduÁ„o ao R/Aulas R/introducao_ao_R')

#\/ carregando base de dados
base.rh.csv = read.csv("Base RH.csv")
#base.rh.csv = read.csv("Base RH.csv", sep = ";")
#/\ sep = ";" <-- para definir o separador
#para ver a base de dados usar o Enviroment do lado direito

#para ler arquivo RDS (formato de arquivo do prÛprio R, objeto para salvar base de dados pelo R)
base.rh.rds = readRDS("Base RH.RDS")

#para ler arquivo xlsx (Excel)
#instalar package openxlsx
install.packages("openxlsx", dependencies = T)
#usar package openxlsx
library(openxlsx)
#n„o usar package openxlsx
detach("package:openxlsx", unload = TRUE)
#ou usar lado inferior direito Packages e tickar ou destickar

#para ler arquivo xlsx (Excel) --> definir a planilha dentro da pasta de trabalho Excel \/
base.rh.xlsx = read.xlsx("Base RH.xlsx", sheet = "Base RH")

#usar bot„o de expans„o do lado superior direito para ver base de dados (colunas e tipos de valores)
#ou usar funÁ„o head para ver seis primeiras linhas da base de dados
head(base.rh.csv)
#ou usar funÁ„o tail para ver seis ˙ltimas linhas da base de dados
tail(base.rh.csv)

#class mostra tipo de objeto
class(base.rh.csv)
class(base.rh.rds)
class(base.rh.xlsx)

#retorna medidas b·sicas de posiÁ„o do data.frame
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

#pacotes para saÌdas gr·ficas
install.packages("dplyr")
library(dplyr)
install.packages("skimr")
library(skimr)
install.packages("ggplot2")
library(ggplot2)

#visualizar as medidas dos dados (saber o que se tem em m„os)
skim(base.rh.csv)

#fazer gr·ficos melhores visualmente (Plots lado inferior direito)
ggplot(base.rh.csv)+
  geom_histogram(mapping = aes(x = SalarioMensal))
#/\ ver distribuiÁ„o de valores
# aes serve para dizer o que È o eixo X e o que È o eixo Y (aestetic)
ggplot(base.rh.csv, mapping = aes(x = SalarioMensal, colour = Satisfacao))+
  geom_freqpoly(binwidth = 1000)

#transformar vari·vel numÈrica em categÛrica
base.rh.csv$Satisfacao = as.factor(base.rh.csv$Satisfacao)

#count --> do pacote dplyr
#conta quantidade por categoria e sÛ funciona apÛs converter vari·vel para factor
base.rh.csv %>%
  count(Satisfacao)

ggplot(base.rh.csv, mapping = aes(x = SalarioMensal,
                                  y = Satisfacao))+
  geom_boxplot()+
  coord_flip()
#/\ serve muito para mensurar se existe outlier (indÌcios) --> apresenta limites inferiores e superiores
#outliers --> pontos fora da curva
#coord_flip() --> transforma o gr·fico de horizontal para vertical