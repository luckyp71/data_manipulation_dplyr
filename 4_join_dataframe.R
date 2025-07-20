require(dplyr)

# --------- inner_join, semi_join, left_join, anti_join, full_join
# ---- most of join commands in R are not symmetric
# inner_join(df1, df2) is not the same as inner_join(df2, df1)

demo <- read.csv('./data/demographics.csv')

str(demo)

demo1 <- demo[,1:4]
demo2 <- demo[,5:8]

id <- c(1:510)

demo1 <- demo1%>%
  mutate(id=id)


demo2 <- demo2%>%
  mutate(id=id)

View(demo1)
View(demo2)

joinned_demo <- inner_join(demo1, demo2, by = "id")

View(joinned_demo)

# Left Join
left_join(demo1, demo2, by='id')
