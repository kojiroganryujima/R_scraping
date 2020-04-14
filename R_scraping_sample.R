###Preriqusite
#Install Packeage
install.packages("rvest", dep=TRUE)
library(rvest)

#read Web site
game_URL <- c("https://www.football-lab.jp/column/entry/734/")

recall_html <- read_html(game_URL)

recall_html %>%
  as.character() %>%   # in case strings are stored as factors
  read_html() %>% 
  html_nodes('h1') %>% 
  html_text() -> home_away_team

write.csv(home_away_team,"C:\\Users\\Å£Å£Å£Å£Å£Å£Å£Å£Å£Å£\\R_scraping_sample.csv", quote=F, col.names=F, append=T)