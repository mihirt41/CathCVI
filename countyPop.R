###Getting the Correct Population Information


###2000 Population Numbers for those Over 18
  library(readr)
  pop2000 <- read_csv("~/MihirTrivedi/DEC_00_SF1_PCT012_with_ann.csv")
  View(pop2000)
  
  pop2000$VD105
  pop2000$VD21
  
  maleBeg<-which(colnames(pop2000)=="VD21")
  maleEnd<-which(colnames(pop2000)=="VD105")
  
  male2000<-c(maleBeg:maleEnd)
  
  pop2000$VD125
  pop2000$VD209
  
  femaleBeg<-which(colnames(pop2000)=="VD125")
  femaleEnd<-which(colnames(pop2000)=="VD209")
  
  female2000<-c(femaleBeg:femaleEnd)
  index2000<-c(male2000,female2000)
  
  targData<-as.data.frame(pop2000[c(2:22),index2000])
  targData<-data.frame(apply(targData, 2,function(x){ as.numeric(as.character(x))}))
  
  mode(targData[1,1])
  
  countyPop2000<-rowSums(targData)


###2005 Population Numbers for those Over 18
  library(readr)
  pop2005 <- read_csv("~/MihirTrivedi/ACS_05_EST_S0101_with_ann.csv")
  View(pop2005)
  
  targData<-data.frame(apply(pop2005[2:22,c(4,148)], 2,function(x){ as.numeric(as.character(x))}))
  countyPop2005<-round((targData$HC01_EST_VC01 * targData$HC01_EST_VC27)/100)

###2010 Population Numbers for those Over 18
  library(readr)
  pop2010 <- read_csv("~/MihirTrivedi/ACS_10_1YR_S0101_with_ann.csv")
  View(pop2010)
  
  targData<-data.frame(apply(pop2010[2:22,c(4,148)], 2,function(x){ as.numeric(as.character(x))}))
  countyPop2010<-round((targData$HC01_EST_VC01 * targData$HC01_EST_VC28)/100)

##2014 Poulation Numbers for those Over 18
  popnumbers<-c(275422,918888,451366,513539,96304,157785,787744,289586,652302,127050,368303,823041,
                629384,497999, 580470,502885,65744,327707,147442,543976,107653)
  
  percentunder18<-c(.22745,.21905, .22360,.23705,.18245,.23782,.24450,.23552,.20412,.22102, .22151,.22339,.22919,.22874,.23243,.24408,.22723, 
                    .23962,.22388,.24015,.22490)
  
  percentover18<-1-percentunder18
  
  countyPop2014<-popnumbers*percentover18
  countyPop2014<-round(countyPop2014)
  
##County Population Regression
  countyPop<-cbind(countyPop2000,countyPop2005, countyPop2010, countyPop2014)
  countyPop<-rbind(c(2000,2005,2010,2014), countyPop)
  
  
  YEAR<-c(2000,2005,2010,2014)
  popReg<-lapply(c(2:nrow(countyPop)), function(x){  
    fit<-lm(as.vector(countyPop[x,]) ~ YEAR)  
    fit 
  })  
  
  for(i in c(1:length(popReg))){
    print(summary(popReg[[i]]))
  } 
  
  pvalues<-sapply(c(1:length(popReg)), function(x){
    coef(summary(popReg[[x]]))[2,4]
  })
  
  sigCoeffModel<-which(pvalues<.05)
  
  predictedPop<-lapply(sigCoeffModel, function(x){
    round(predict(popReg[[x]], data.frame(YEAR = c(1994:2014))))
  }) 
  
  table<-data.frame()
  for(i in c(1:length(predictedPop))){
    table<-rbind(table,predictedPop[[i]])
  }
  
  table<-cbind(table,sigCoeffModel)
  colnames(table)<-c(1994:2014, "sigCoeffModel")
  
##Creating Population Tables
  popTable<-data.frame()
  for(i in c(2:nrow(countyPop))){  
    j<-i-1
    if (!(j%in%sigCoeffModel)){
      a<-c(rep(as.vector(countyPop[i,1]),7),  
           rep(as.vector(countyPop[i,2]),5), 
           rep(as.vector(countyPop[i,3]),5),
           rep(as.vector(countyPop[i,4]),4) )
    }else{ 
      a<-as.vector(table[which(j==sigCoeffModel),c(1:21)])
    } 
    
    popTable<-rbind(popTable, a)
  } 
  
  colnames(popTable)<-c(1994:2014)
  rownames(popTable)<-c("ATL", "BER", "BUR", "CAM","CAP","CUM","ESS","GLO","HUD","HUN","MER","MID","MON","MOR","OCE","PAS","SAL","SOM","SUS","UNI","WAR")
  
  countyPopTable<-popTable
  View(popTable)
  
####Creating another Population table for regions instead of county
  NORTHNJ<-c("BER", "ESS","HUD","MOR","PAS","SUS", "UNI", "WAR")
  CENTRALNJ<-c("HUN","MER", "MID", "MON", "SOM", "OCE")
  SOUTHERNJ<-c("ATL", "BUR", "CAM", "CAP", "CUM", "GLO", "SAL")
  
  
  northPop<-colSums(popTable[which(rownames(popTable)%in%NORTHNJ),])
  centPop<-colSums(popTable[which(rownames(popTable)%in%CENTRALNJ),])
  southPop<-colSums(popTable[which(rownames(popTable)%in%SOUTHERNJ),])
  
  regionPopTable<-rbind(northPop,centPop,southPop)
  rownames(regionPopTable)<-c("North","Central","South")

  
###Total Population Numbers New Jersey
  
  popTable<-colSums(popTable)
  
