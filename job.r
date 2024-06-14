library("tasi")
df <- get_index_records("2021-01-01","2022-12-31")
 plt1 <- df %>%  ggplot(mapping = aes(x = as.POSIXct(transactionDate), y = previousClosePrice)) + geom_line() + 
  labs(title = "Historical data for tasi index 2021-2022", x = "Date", y = "TASI index") + theme_classic()
ggsave("myplot.png", plot = plt1)
