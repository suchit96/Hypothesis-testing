#Hypothesis testig


#load a dataset

library(readxl)

# 2 sample t test 
#######Cutlets.csv data############
Cutlets<-read.csv(file.choose())
attach(Cutlets)
colnames(Cutlets)<-c("UnitA","UnitB")

# changing a column
View(Cutlets)
attach(Cutlets)

####### Normality test ##########

shapiro.test(UnitA)
# p-value = 0.32 >0.05 so p high null fly # It follows normal distribution

shapiro.test(UnitB)
# p-value = 0.5225 > 0.05 so p high null fly # It follows normal distribution 


########### Veriance Test #############
var.test(UnitA,UnitB)

# P value = 0.3136 > alpha so p high null fly # ...................?/?????

############# sample t test ################

t.test(UnitA,UnitB,alternative = "two.sided",conf.level = 0.95)
# alternative = "two sided" means we checking for equal or unequal
#means
#Null hypothesis -> equal means
#Alternative hypothesis -> mean unequal 
# P-value = 0.4723 > aplha (0.05) accept null hypothesis
#means equal

t.test(UnitA,UnitB,alternative = "less",var.equal = T)
# atlternative = less means true diff. is greater then 0
#Null hypothesis -> (unitA-unitB) < 0
#alternative hypothesis -> (unitA-unitB) > 0
#P-value = 0.7639 > 0.05 => p is high null fly => accept null hypothesis 
