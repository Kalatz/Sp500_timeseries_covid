rm(list=ls())
cat("\014")

library(quantmod) 
library(tseries)
library(readxl)
library(car)
library(dplyr)
library(urca)
library(ecm) 
library(vars)

#Import variables

#get the stocks

#S&P 500
getSymbols("^GSPC", from="2000-01-01", to="2023-01-01", src = "yahoo") #SP ts
SP500 <- GSPC$GSPC.Adjusted #S&P 500
SP500 <- na.omit(SP500) #drop NA
SP500.rtn <- diff(log(SP500)) #logarithmic returns
SP500.rtn <- na.omit(SP500.rtn) #drop NA


#Apple
getSymbols("AAPL", from="2000-01-01", to="2023-01-01", src = "yahoo")
Apple <- AAPL$AAPL.Adjusted 
Apple <- na.omit(Apple) 
Apple.rtn <- diff(log(Apple))
Apple.rtn <- na.omit(Apple.rtn)


#Microsoft
getSymbols("MSFT", from="2000-01-01", to="2023-01-01", src = "yahoo")
Microsoft <- MSFT$MSFT.Adjusted 
Microsoft <- na.omit(Microsoft) 
Microsoft.rtn <- diff(log(Microsoft))
Microsoft.rtn <- na.omit(Microsoft.rtn)


#Amazon
getSymbols("AMZN", from="2000-01-01", to="2023-01-01", src = "yahoo")
Amazon <- AMZN$AMZN.Adjusted 
Amazon <- na.omit(Amazon) 
Amazon.rtn <- diff(log(Amazon))
Amazon.rtn <- na.omit(Amazon.rtn)


#Alphabet Inc class A
getSymbols("GOOGL", from="2000-01-01", to="2023-01-01", src = "yahoo")
Alpabet_A <- GOOGL$GOOGL.Adjusted 
Alpabet_A <- na.omit(Alpabet_A) 
Alpabet_A.rtn <- diff(log(Alpabet_A))
Alpabet_A.rtn <- na.omit(Alpabet_A.rtn)


#Alphabet Inc class C
getSymbols("GOOG", from="2000-01-01", to="2023-01-01", src = "yahoo")
Alpabet_C <- GOOG$GOOG.Adjusted 
Alpabet_C <- na.omit(Alpabet_C) 
Alpabet_C.rtn <- diff(log(Alpabet_C))
Alpabet_C.rtn <- na.omit(Alpabet_C.rtn)


#AbbVie Inc.
getSymbols("ABBV", from="2000-01-01", to="2023-01-01", src = "yahoo")
AbbVie <- ABBV$ABBV.Adjusted
AbbVie <- na.omit(AbbVie) 
AbbVie.rtn <- diff(log(AbbVie)) 
AbbVie.rtn <- na.omit(AbbVie.rtn)


#NVidia
getSymbols("NVDA", from="2000-01-01", to="2023-01-01", src = "yahoo")
NVidia <- NVDA$NVDA.Adjusted
NVidia <- na.omit(NVidia) 
NVidia.rtn <- diff(log(NVidia))
NVidia.rtn <- na.omit(NVidia.rtn)


#Tesla
getSymbols("TSLA", from="2000-01-01", to="2023-01-01", src = "yahoo")
Tesla <- TSLA$TSLA.Adjusted
Tesla <- na.omit(Tesla) 
Tesla.rtn <- diff(log(Tesla))
Tesla.rtn <- na.omit(Tesla.rtn)


#Exxon
getSymbols("XOM", from="2000-01-01", to="2023-01-01", src = "yahoo")
Exxon <- XOM$XOM.Adjusted
Exxon <- na.omit(Exxon) 
Exxon.rtn <- diff(log(Exxon))
Exxon.rtn <- na.omit(Exxon.rtn)


#United Health
getSymbols("UNH", from="2000-01-01", to="2023-01-01", src = "yahoo")
UniHP <- UNH$UNH.Adjusted
UniHP <- na.omit(UniHP) 
UniHP.rtn <- diff(log(UniHP))
UniHP.rtn <- na.omit(UniHP.rtn)


#Johnson & Johnson
getSymbols("JNJ", from="2000-01-01", to="2023-01-01", src = "yahoo")
Johnson <- JNJ$JNJ.Adjusted
Johnson <- na.omit(Johnson) 
Johnson.rtn <- diff(log(Johnson))
Johnson.rtn <- na.omit(Johnson.rtn)


#Meta Platforms Inc. Class A
getSymbols("META", from="2000-01-01", to="2023-01-01", src = "yahoo")
MetaPlat <- META$META.Adjusted
MetaPlat <- na.omit(MetaPlat) 
MetaPlat.rtn <- diff(log(MetaPlat))
MetaPlat.rtn <- na.omit(MetaPlat.rtn)


#JPMorgan Chase & Co.
getSymbols("JPM", from="2000-01-01", to="2023-01-01", src = "yahoo")
JPMorgan <- JPM$JPM.Adjusted
JPMorgan <- na.omit(JPMorgan) 
JPMorgan.rtn <- diff(log(JPMorgan))
JPMorgan.rtn <- na.omit(JPMorgan.rtn)


#Visa Inc. Class A
getSymbols("V", from="2000-01-01", to="2023-01-01", src = "yahoo")
Visa <- V$V.Adjusted
Visa <- na.omit(Visa) 
Visa.rtn <- diff(log(Visa))
Visa.rtn <- na.omit(Visa.rtn)


#Home Depot Inc.
getSymbols("HD", from="2000-01-01", to="2023-01-01", src = "yahoo")
HomeDepot <- HD$HD.Adjusted
HomeDepot <- na.omit(HomeDepot) 
HomeDepot.rtn <- diff(log(HomeDepot))
HomeDepot.rtn <- na.omit(HomeDepot.rtn)


#Procter & Gamble Company
getSymbols("PG", from="2000-01-01", to="2023-01-01", src = "yahoo")
ProcterGamble <- PG$PG.Adjusted
ProcterGamble <- na.omit(ProcterGamble) 
ProcterGamble.rtn <- diff(log(ProcterGamble))
ProcterGamble.rtn <- na.omit(ProcterGamble.rtn)


#Mastercard Incorporated Class A
getSymbols("MA", from="2000-01-01", to="2023-01-01", src = "yahoo")
Mastercard <- MA$MA.Adjusted
Mastercard <- na.omit(Mastercard) 
Mastercard.rtn <- diff(log(Mastercard))
Mastercard.rtn <- na.omit(Mastercard.rtn)


#Chevron Corporation
getSymbols("CVX", from="2000-01-01", to="2023-01-01", src = "yahoo")
Chevron <- CVX$CVX.Adjusted
Chevron <- na.omit(Chevron) 
Chevron.rtn <- diff(log(Chevron))
Chevron.rtn <- na.omit(Chevron.rtn)


#Eli Lilly and Company
getSymbols("LLY", from="2000-01-01", to="2023-01-01", src = "yahoo")
Lilly <- LLY$LLY.Adjusted
Lilly <- na.omit(Lilly) 
Lilly.rtn <- diff(log(Lilly))
Lilly.rtn <- na.omit(Lilly.rtn)


#Merck & Co. Inc.
getSymbols("MRK", from="2000-01-01", to="2023-01-01", src = "yahoo")
Merck <- MRK$MRK.Adjusted
Merck <- na.omit(Merck) 
Merck.rtn <- diff(log(Merck))
Merck.rtn <- na.omit(Merck.rtn)


#Merge, split and plot the data

#merge and split
data.full <- merge(SP500,
                   Apple, Microsoft, Amazon, Alpabet_A,
                   Alpabet_C, AbbVie, NVidia, Tesla,
                   Exxon, UniHP, Johnson, MetaPlat,
                   JPMorgan, Visa, HomeDepot, ProcterGamble,
                   Mastercard, Chevron, Lilly, Merck,
                   join = "inner")
colnames(data.full) <- c('SP500',
                         'Apple', 'Microsoft', 'Amazon', 'Alpabet_A',
                         'Alpabet_C', 'AbbVie', 'NVidia', 'Tesla',
                         'Exxon', 'UniHP', 'Johnson', 'MetaPlat',
                         'JPMorgan', 'Visa', 'HomeDepot', 'ProcterGamble',
                         'Mastercard', 'Chevron', 'Lilly', 'Merck')
first.sample <- window(data.full, start = "2016-11-15", end = "2019-11-15")
second.sample <- window(data.full,  start = "2019-11-15", end = "2022-11-30")
summary(first.sample)


data.full.rtn <- merge(SP500.rtn,
                       Apple.rtn, Microsoft.rtn, Amazon.rtn, Alpabet_A.rtn,
                       Alpabet_C.rtn, AbbVie.rtn, NVidia.rtn, Tesla.rtn,
                       Exxon.rtn, UniHP.rtn, Johnson.rtn, MetaPlat.rtn,
                       JPMorgan.rtn, Visa.rtn, HomeDepot.rtn, ProcterGamble.rtn,
                       Mastercard.rtn, Chevron.rtn, Lilly.rtn, Merck.rtn,
                       join = "inner")
colnames(data.full.rtn) <- c('SP500',
                             'Apple', 'Microsoft', 'Amazon', 'Alpabet_A',
                             'Alpabet_C', 'AbbVie', 'NVidia', 'Tesla',
                             'Exxon', 'UniHP', 'Johnson', 'MetaPlat',
                             'JPMorgan', 'Visa', 'HomeDepot', 'ProcterGamble',
                             'Mastercard', 'Chevron', 'Lilly', 'Merck')
first.sample.rtn <- window(data.full.rtn, start = "2016-11-15", end = "2019-11-15")
second.sample.rtn <- window(data.full.rtn,  start = "2019-11-15", end = "2022-11-30")
summary(first.sample.rtn)


library(feasts)
library(tsibble)
library(lubridate)
library(TSstudio)

#graph data

#2016-2019
first.sample_ts <- ts(data = first.sample[,2:21],
                      start = c(2016, 11, 15), # start date
                      end = c(2019, 11, 15), # end date# selecting 2 variables
                      frequency = 756)
ts_info(first.sample_ts)
#plot
ts_plot(first.sample_ts,
        title = "SP500 Stocks 2016-11-15/2019-11-15",
        Ytitle = "Adjusted Closed",
        Xtitle = "Year")

first.sample.rtn_ts <- ts(data = first.sample.rtn[,2:21],
                          start = c(2016, 11, 15), # start date
                          end = c(2019, 11, 15), # end date# selecting 2 variables
                          frequency = 756)
ts_info(first.sample.rtn_ts)

ts_plot(first.sample.rtn_ts,
        title = "SP500 Stocks 2016-11-15/2019-11-15",
        Ytitle = "Adjusted Closed",
        Xtitle = "Year")

#2019-2022
second.sample_ts <- ts(data = second.sample[,2:21],
                       start = c(2019, 11, 15), # start date
                       end = c(2022, 11, 30), # end date# selecting 2 variables
                       frequency = 766)
ts_info(second.sample_ts)
#plot
ts_plot(second.sample_ts,
        title = "SP500 Stocks 2019-11-15/2022-11-30",
        Ytitle = "Adjusted Closed",
        Xtitle = "Year")

second.sample.rtn_ts <- ts(data = second.sample.rtn[,2:21],
                           start = c(2019, 11, 15), # start date
                           end = c(2022, 11, 30), # end date# selecting 2 variables
                           frequency = 766)
ts_info(second.sample.rtn_ts)

ts_plot(second.sample.rtn_ts,
        title = "SP500 Stocks 2019-11-15/2022-11-30",
        Ytitle = "Adjusted Closed",
        Xtitle = "Year")

#autocorrelation   

#SP500 Autocorellation
first.sample.sp_ts <- ts(data = first.sample[,1],
                         start = c(2016, 11, 15), # start date
                         end = c(2019, 11, 15), # end date# selecting 2 variables
                         frequency = 756)
second.sample.sp_ts <- ts(data = second.sample[,1],
                          start = c(2019, 11, 15), # start date
                          end = c(2022, 11, 30), # end date# selecting 2 variables
                          frequency = 766)
par(mfrow = c(1, 2))

# acf time series

first.sample.sp_ts %>% 
  acf(lag.max = 2700, 
      main = paste("Autocorrelation Plot - SP500"))

# pacf time series

first.sample.sp_ts %>%
  pacf(lag.max = 2700,
       main = paste("Partial Autocorrelation Plot - SP500"))

ts_lags(first.sample.sp_ts,
        lags = c(1, 150, 300, 450, 600, 700))

par(mfrow = c(1, 2))

# acf time series

second.sample.sp_ts %>% 
  acf(lag.max = 2700, 
      main = paste("Autocorrelation Plot - SP500"))

# pacf time series

second.sample.sp_ts %>%
  pacf(lag.max = 2700,
       main = paste("Partial Autocorrelation Plot - SP500"))

ts_lags(second.sample.sp_ts,
        lags = c(1, 150, 300, 450, 600, 700))

#2016-2019



#Autocorrelation function

autocor <- function(name){
  par(mfrow = c(1, 2))
  # acf time series
  
  first.sample_ts[, c(name)] %>% 
    acf(lag.max = 2700, 
        main = paste("Autocorrelation Plot -", name))
  
  # pacf time series
  
  first.sample_ts[, c(name)] %>%
    pacf(lag.max = 2700,
         main = paste("Partial Autocorrelation Plot -", name))
}

lags_function <- function(name){
  ts_lags(first.sample_ts[,c(name)],
          lags = c(1, 150, 300, 450, 600, 700))
}

autocor("Apple")
lags_function("Apple")

names <- c('Apple', 'Microsoft', 'Amazon', 'Alpabet_A',
           'Alpabet_C', 'AbbVie', 'NVidia', 'Tesla',
           'Exxon', 'UniHP', 'Johnson', 'MetaPlat',
           'JPMorgan', 'Visa', 'HomeDepot', 'ProcterGamble',
           'Mastercard', 'Chevron', 'Lilly', 'Merck')

par(mfrow = c(1, 2))
for(x in names[1]){
  # acf time series
  
  first.sample_ts[, c(x)] %>% 
    acf(lag.max = 2700, 
        main = paste("Autocorrelation Plot -", x))
  
  # pacf time series
  
  first.sample_ts[, c(x)] %>%
    pacf(lag.max = 2700,
         main = paste("Partial Autocorrelation Plot -", x))
}

#2019-2022
autocor <- function(name){
  par(mfrow = c(1, 2))
  # acf time series
  
  second.sample_ts[, c(name)] %>% 
    acf(lag.max = 2700, 
        main = paste("Autocorrelation Plot -", name))
  
  # pacf time series
  
  second.sample_ts[, c(name)] %>%
    pacf(lag.max = 2700,
         main = paste("Partial Autocorrelation Plot -", name))
}

lags_function <- function(name){
  ts_lags(second.sample_ts[,c(name)],
          lags = c(1, 150, 300, 450, 600, 700))
}

autocor("Apple")
lags_function("Apple")

par(mfrow = c(1, 2))
for(x in names[1:20]){
  # acf time series
  
  second.sample_ts[, c(x)] %>% 
    acf(lag.max = 2700, 
        main = paste("Autocorrelation Plot -", x))
  
  # pacf time series
  
  second.sample_ts[, c(x)] %>%
    pacf(lag.max = 2700,
         main = paste("Partial Autocorrelation Plot -", x))
}

#Correlation

library(tidyverse)  
library(corrr)
library(ggraph)
library(igraph)
library(corrplot)

#2016-2019
res <- cor(first.sample.rtn)
round(res, 2)

#plot
par(mfrow = c(1, 1))
corrplot(res, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)

#network
res[res > -0.4 & res < 0.4] <- 0

graph <- graph.adjacency(res, weighted = TRUE)

ggraph(graph, layout = 'linear', circular = TRUE) + 
  geom_edge_arc(aes(color = weight, size = abs(weight))) + 
  geom_node_text(aes(label = name, angle = node_angle(x, y)), hjust = -0.5) +
  geom_node_point(shape = 21, size = 5, aes(fill = name)) +
  theme_graph() +
  scale_edge_color_gradientn(colours = c('red4', 'gold', 'green4','blue')) +
  coord_fixed(xlim = c(-2, 2), ylim = c(-2, 2)) +
  guides(fill = guide_none())

#2019-2022
res <- cor(second.sample.rtn)
round(res, 2)

#plot
corrplot(res, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)

#network
res[res > -0.4 & res < 0.4] <- 0

graph <- graph.adjacency(res, weighted = TRUE)

ggraph(graph, layout = 'linear', circular = TRUE) + 
  geom_edge_arc(aes(color = weight, size = abs(weight))) + 
  geom_node_text(aes(label = name, angle = node_angle(x, y)), hjust = -0.5) +
  geom_node_point(shape = 21, size = 5, aes(fill = name)) +
  theme_graph() +
  scale_edge_color_gradientn(colours = c('red4', 'gold', 'green4','blue')) +
  coord_fixed(xlim = c(-2, 2), ylim = c(-2, 2)) +
  guides(fill = guide_none())

# ccf time series

par(mfrow=c(1,1))
ccf(first.sample_ts[, c("Apple")], first.sample_ts[, c("Microsoft")], 
    lag.max = 756,
    main = "Cros-Correlation Plot",
    ylab = "CCF")

#granger test
#2016-2019
n = 0
granger_up = c()
for(i in 1:20){
  for(x in i:20){
    n = n+1
    granger_up <- c(granger_up, grangertest(first.sample.rtn[,i] , first.sample.rtn[,x+1]))
  }
}
n

n = 0
granger_down = c()
for(i in 1:20){
  for(x in i:20){
    n = n+1
    granger_down <- c(granger_down, grangertest(first.sample.rtn[,x+1] , first.sample.rtn[,i]))
  }
}
n

pr_up <- c()
for(x in 1:210){
  pr_up <- c(pr_up, granger_up[x*4]$`Pr(>F)`[grepl("\\.", granger_up[x*4]$`Pr(>F)`)])
}
length(pr_up)
typeof(pr_up)

pr_down <- c()
for(x in 1:210){
  pr_down <- c(pr_down, granger_down[x*4]$`Pr(>F)`[grepl("\\.", granger_down[x*4]$`Pr(>F)`)])
}
length(pr_down)
typeof(pr_down)

prmatrix = matrix(data=NA, nrow=21, ncol=21)
n=1
m=1
for(i in  1:21){
  for(j in 1:21){
    if(i<j) {
      prmatrix[i,j] = pr_up[n]
      n = n+1
    } else if (j==i) {
      prmatrix[i,j] = 0
    }
  }
}
for(j in  1:21){
  for(i in 1:21){
    if (j<i) {
      prmatrix[i,j] = pr_down[m]
      m = m + 1
    }
  }
}

rownames(prmatrix) <- c("SP500", "Apple", "Microsoft", "Amazon", "AbbVie", "Alphabet Class A",
                        "NVIDIA", "Tesla", "Alphabet Class C", "Exxon", "UnitedHealth", 
                        "Johnson&Johnson", "JPMorgan", "Meta Platforms", "Visa", "Procter&Gamble",
                        "HomeDepot", "Mastercard", "Chevron", "Merck", "Eli Lilly")
colnames(prmatrix) <- c("SP500", "Apple", "Microsoft", "Amazon", "AbbVie", "Alphabet Class A",
                        "NVIDIA", "Tesla", "Alphabet Class C", "Exxon", "UnitedHealth", 
                        "Johnson&Johnson", "JPMorgan", "Meta Platforms", "Visa", "Procter&Gamble",
                        "HomeDepot", "Mastercard", "Chevron", "Merck", "Eli Lilly")
print(prmatrix)  

#Causal Network

prmatrix[prmatrix > 0.05] <- 0

graph <- graph.adjacency(prmatrix, weighted = TRUE)

ggraph(graph, layout = 'linear', circular = TRUE) + 
  geom_edge_arc(aes(color = weight, size = abs(weight))) + 
  geom_node_text(aes(label = name, angle = node_angle(x, y)), hjust = -0.5) +
  geom_node_point(shape = 21, size = 5, aes(fill = name)) +
  theme_graph() +
  scale_edge_color_gradientn(colours = c('red4', 'gold', 'green4','blue')) +
  coord_fixed(xlim = c(-2, 2), ylim = c(-2, 2)) +
  guides(fill = guide_none())

#SP500 causality

colnames(prmatrix)[which(prmatrix[1,]!=0)]

#2019-2022
n = 0
granger_up = c()
for(i in 1:20){
  for(x in i:20){
    n = n+1
    granger_up <- c(granger_up, grangertest(second.sample.rtn[,i] , second.sample.rtn[,x+1]))
  }
}
n

n = 0
granger_down = c()
for(i in 1:20){
  for(x in i:20){
    n = n+1
    granger_down <- c(granger_down, grangertest(second.sample.rtn[,x+1] , second.sample.rtn[,i]))
  }
}
n

pr_up <- c()
for(x in 1:210){
  pr_up <- c(pr_up, granger_up[x*4]$`Pr(>F)`[grepl("\\.", granger_up[x*4]$`Pr(>F)`)])
}
length(pr_up)
typeof(pr_up)

pr_down <- c()
for(x in 1:210){
  pr_down <- c(pr_down, granger_down[x*4]$`Pr(>F)`[grepl("\\.", granger_down[x*4]$`Pr(>F)`)])
}
length(pr_down)
typeof(pr_down)

prmatrix = matrix(data=NA, nrow=21, ncol=21)
n=1
m=1
for(i in  1:21){
  for(j in 1:21){
    if(i<j) {
      prmatrix[i,j] = pr_up[n]
      n = n+1
    } else if (j==i) {
      prmatrix[i,j] = 0
    }
  }
}
for(j in  1:21){
  for(i in 1:21){
    if (j<i) {
      prmatrix[i,j] = pr_down[m]
      m = m + 1
    }
  }
}

rownames(prmatrix) <- c("SP500", "Apple", "Microsoft", "Amazon", "AbbVie", "Alphabet Class A",
                        "NVIDIA", "Tesla", "Alphabet Class C", "Exxon", "UnitedHealth", 
                        "Johnson&Johnson", "JPMorgan", "Meta Platforms", "Visa", "Procter&Gamble",
                        "HomeDepot", "Mastercard", "Chevron", "Merck", "Eli Lilly")
colnames(prmatrix) <- c("SP500", "Apple", "Microsoft", "Amazon", "AbbVie", "Alphabet Class A",
                        "NVIDIA", "Tesla", "Alphabet Class C", "Exxon", "UnitedHealth", 
                        "Johnson&Johnson", "JPMorgan", "Meta Platforms", "Visa", "Procter&Gamble",
                        "HomeDepot", "Mastercard", "Chevron", "Merck", "Eli Lilly")
print(prmatrix)  

#Causal Network

prmatrix[prmatrix > 0.05] <- 0

graph <- graph.adjacency(prmatrix, weighted = TRUE)

ggraph(graph, layout = 'linear', circular = TRUE) + 
  geom_edge_arc(aes(color = weight, size = abs(weight))) + 
  geom_node_text(aes(label = name, angle = node_angle(x, y)), hjust = -0.5) +
  geom_node_point(shape = 21, size = 5, aes(fill = name)) +
  theme_graph() +
  scale_edge_color_gradientn(colours = c('red4', 'gold', 'green4','blue')) +
  coord_fixed(xlim = c(-2, 2), ylim = c(-2, 2)) +
  guides(fill = guide_none())

#SP500 causality

colnames(prmatrix)[which(prmatrix[1,]!=0)]

#Linear Regresion
lm_bef_covid <- lm(first.sample[,1] ~ first.sample[,2] + first.sample[,3] + first.sample[,4] + first.sample[,5] + first.sample[,6] +
                     first.sample[,7] + first.sample[,8] + first.sample[,9] + first.sample[,10] + first.sample[,11] +
                     first.sample[,12] + first.sample[,13] + first.sample[,14] + first.sample[,15] + first.sample[,16] +
                     first.sample[,17] + first.sample[,18] + first.sample[,19] + first.sample[,20] + first.sample[,21])

lm_after_covid <- lm(second.sample[,1] ~ second.sample[,2] + second.sample[,3] + second.sample[,4] + second.sample[,5] + second.sample[,6] +
                       second.sample[,7] + second.sample[,8] + second.sample[,9] + second.sample[,10] + second.sample[,11] +
                       second.sample[,12] + second.sample[,13] + second.sample[,14] + second.sample[,15] + second.sample[,16] +
                       second.sample[,17] + second.sample[,18] + second.sample[,19] + second.sample[,20] + second.sample[,21])

summary(lm_bef_covid)
summary(lm_after_covid)

#Linear Regresion after dimensionality reduction 

dim_red_lm_bef_covid <- lm(first.sample[,1] ~ first.sample[,"AbbVie"] + first.sample[,"Alpabet_A"] + first.sample[,"Tesla"] + first.sample[,"JPMorgan"])


dim_red_lm_after_covid <- lm(second.sample[,1] ~ second.sample[,2] + second.sample[,3] + second.sample[,4] + second.sample[,5] +
                               second.sample[,7] + second.sample[,9] + second.sample[,10] + second.sample[,11] +
                               second.sample[,12] + second.sample[,13] + second.sample[,14] + second.sample[,15] + second.sample[,16] +
                               second.sample[,17] + second.sample[,18] + second.sample[,19] + second.sample[,20] + second.sample[,21])

summary(dim_red_lm_bef_covid)
summary(dim_red_lm_after_covid)
