#install.packages("JSTORr")


install.packages(pkgs = "devtools", dependencies = TRUE)
library(devtools)

#install_github("benmarwick/JSTORr")

#library(JSTORr)
                                     
setwd("/Users/e5028514/OneDrive - Victoria University/papers to send/social media review/jstorAnalytics/metadata")

install.packages("jstor")
library(jstor)
library(magrittr)
  
#jstor<-jst_get_article("journal-article-10.1017_s002238160809018x.xml")                                   

files = list.files(pattern="*.xml")

jstor<- rbindlist(lapply(files, jst_get_article))

jstor11<-jstor %>% 
  filter(article_type=="research-article") %>%
  filter(pub_year>=2008)

jstor11<-data.table (jstor11)

jstor11[, .N, by=pub_year]




sciencedirectKey<-"251dec6d19f1fe5393dd275646c168c1"




%>%