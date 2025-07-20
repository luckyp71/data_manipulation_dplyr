require(dplyr)

demo <- read.csv('./data/demographics.csv')

str(demo)
glimpse(demo)
View(demo)

demo%>%
  group_by(educ)%>%
  summarise(noc=n())%>%
  arrange(desc(noc))

demo%>%
  filter(income>50)%>%
  count(marital, gender)

demo%>%
  filter(income>50)%>%
  group_by(marital, gender)%>%
  summarise(noc=n())


demo%>%
  filter(income>50)%>%
  sample_n(10, replace=TRUE)%>%
  top_n(5, income)%>%
  arrange(desc(income))

demo%>%
  filter(income>50)%>%
  sample_n(10, replace=TRUE)%>%
  top_n(5, income)%>%
  arrange(desc(income))%>%
  glimpse
