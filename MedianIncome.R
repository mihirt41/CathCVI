####Aggregating Median Income Data


  ###2014 data
  medianhouseholdincome2014<-c(50881,82001,74285,58572,55175,46491,51019,72248,56087,103301,67662,77044,81190,95236,59022,58073,57939,95574,
                         85036,64698,70560)
  
  ##2011 Data
  medianhouseholdincome2011<-c(52409,
  82136,
  76869,
  60746,
  54423,
  49720,
  54694,
  70273,
  54800,
  102249,
  72883,
  77015,
  82503,
  99268,
  59199,
  56552,
  57935,
  99817,
  79393,
  67127,
  74721)
  
  
  ##Running Regression for Median Income Data
  
  medianIncomeCounty<-cbind(medianhouseholdincome2014,medianhouseholdincome2011)
  
  YEAR<-c(2011,2014)
  medianReg<-lapply(c(1:21), function(x){  
    fit<-lm(as.vector(medianIncomeCounty[x,]) ~ YEAR)  
    fit 
  })  
  
  for(i in c(1:length(medianReg))){
    print(summary(medianReg[[i]]))
  } 
  
  pvalues<-sapply(c(1:length(medianReg)), function(x){
    coef(summary(medianReg[[x]]))[2,4]
  })
  
  sigCoeffModel<-which(pvalues<.05)
  
  ###Nothing is significant so we just use 2011 data for 1994-2011 2014 data for 2011-2014
  
  medianIncomeTable<-as.data.frame(medianhouseholdincome2011)
  
  for(i in c(1995:2011)){
    medianIncomeTable<-cbind(medianIncomeTable, medianhouseholdincome2011)
  }
  
  for(i in c(2012:2014)){
    medianIncomeTable<-cbind(medianIncomeTable, medianhouseholdincome2014)
  }
  
  View(medianIncomeTable)
  colnames(medianIncomeTable)<-c(1994:2014)
  rownames(medianIncomeTable)<-c("ATL", "BER", "BUR", "CAM","CAP","CUM","ESS","GLO","HUD","HUN","MER","MID","MON","MOR","OCE","PAS","SAL","SOM","SUS","UNI","WAR")
  
  
  
  
  