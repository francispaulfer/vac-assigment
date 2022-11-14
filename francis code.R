library(rvest)
library(dplyr)
library(robotstxt)
path = paths_allowed("https://www.pricebefore.com/mobiles/")
link <-
  'https://www.pricebefore.com/mobiles/'
web <- read_html(link)
name <- web %>%html_nodes(".col-right .link")%>% html_text()
View(name)
price <- web %>%html_nodes(".col-right .final")%>% html_text()
View(price)
mobile.price <- data.frame(name,price)
View(mobile.price)
write.csv (mobile.price, "My_mobile data.csv")

