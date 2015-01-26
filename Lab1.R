price.sbux<-read.csv("sbuxPrices.csv",header=TRUE)
price.msft<-read.csv("msftPrices.csv",header=TRUE)

par(2,2)
rownames(price.sbux) = price.sbux$Date
plot(price.sbux$Adj.Close,type="l")

rownames(price.msft) = price.msft$Date
plot(price.msft$Adj.Close,type="l")

n=nrow(price.sbux)
ret.simple.sbux=price.sbux[2:n,"Adj.Close"]/price.sbux[1:n-1,"Adj.Close"]-1
names(ret.simple.sbux)<-price.sbux[2:n,"Date"]

plot(ret.simple.sbux,type="l")

ret.cc.sbux=log(price.sbux[2:n,"Adj.Close"]/price.sbux[1:n-1,"Adj.Close"])
names(ret.cc.sbux)<-price.sbux[2:n,"Date"]
plot(ret.cc.sbux,type="l")

