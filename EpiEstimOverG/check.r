# setwd("~/GitHub/Mobility/workstream/EpiEstimOverG/Rdata")
d=readRDS('Rdata/2020-04-26_output_SI_2.rds')
a=d$resEpi$median_R
View(a)

d2=readRDS('../EpiEstimOver/Rdata/2020-04-26_output_SI_2.rds')

a2=d2$resEpi$median_R

b<-merge(x = a,y = a2,by = 'dates')
View(b)
cvs <- merge(x= d$resEpi$CV, y=d2$resEpi$CV,by='dates')


plot(b$Argentina.x,b$Argentina.y)
lines(c(0,10),c(0,10))

plot(b$United_Kingdom.x,
     b$United_Kingdom.y)

plot(b$United_States_of_America.x,
     b$United_States_of_America.y)

plot(b$Belgium.x,
     b$Belgium.y)

plot(b$Chile.x,
     b$Chile.y)

plot(b$Egypt.x,
     b$Egypt.y)

plot(b$France.x,
     b$France.y)
