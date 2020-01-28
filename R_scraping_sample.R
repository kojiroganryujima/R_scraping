#前処理
##パッケージ読み込み
install.packages("rvest", dep=TRUE)
library(rvest)

game_URL <- c("https://www.football-lab.jp/c-os/report/?year=2019&month=02&date=22")

recall_html <- read_html(game_URL)

recall_html %>%
  html_nodes(".tblCompare") %>%
  html_text() -> home_away_team  # テキストデータを取り出す

write.csv(home_away_team,"C:\\Users\\noriaki.sasaki\\Desktop\\R_scraping_sample.csv", quote=F, col.names=F, append=T)