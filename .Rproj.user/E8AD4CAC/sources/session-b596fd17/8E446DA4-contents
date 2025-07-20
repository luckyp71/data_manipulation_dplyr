require(dplyr)

# ------------------- count function

demo <- read.csv('./data/demographics.csv')

View(demo)

demo%>%
  filter(income<100)%>%
  count()

demo%>%
  filter(income<100)%>%
  summarise(n())

demo%>%
  group_by(educ)%>%
  summarise(noc=n())%>%
  mutate(proportioin=noc/sum(noc))%>%
  arrange(desc(noc))

demo%>%
  group_by(gender, retired)%>%
  summarise(noc=n())%>%
  mutate(proportion=noc/sum(noc))%>%
  arrange(desc(proportion))


View(demo)

# --------------------------------- tally function
# to sum
tally(demo)

tally(demo, income)

demo2 <- add_tally(demo)

head(demo2)

demo3 <- add_tally(demo2, income)

head(demo3, 5)

# --------------------------------- n_distinct()
n_distinct(demo$educ)

n_distinct(demo$gender)

# ----------------------- sample()
# sampling without replacement
demo_s <- sample_n(demo, 100)

View(demo_s)

# sampling with replacement
demo_s <- sample_n(demo, 100, replace=TRUE)
View(demo_s)

# sampling with fraction with replacement
demo_s <- sample_frac(demo, 0.3, replace = TRUE)
View(demo_s)


# ----------------------------------- top_n()
# top 10 income
demo%>%top_n(10, income)%>%
  arrange(desc(income))


# ----------------------------------- bind_rows and bind_cols
demo1 <- demo[1:10, ]
demo2 <- demo[501:510,]

bind_rows(demo1, demo2)

# bind cols should have the same number of rows
bind_cols(demo1, demo2)

# ------------------------------------ glimpse()
glimpse(demo)


# ------------------------------------ set operations

# intersect
x <- 1:10
y <- c(2,4,6,9,11,15)
intersect(x,y)

demo1 <- demo[10:30,]
demo2 <- demo[20:40,]
intersect(demo1, demo2)

# union
union(demo1, demo2)

# get elements that are found in x, but not in y
setdiff(x,y)

# get elments that are found in y, but not in x
setdiff(y,x)

# compare rows
# rows found in demo1, but not in demo2
setdiff(demo1, demo2)

# rows found in demo2, but not in demo1
setdiff(demo2, demo1)

# compare column names between two dataframes
demo2 <- demo[20:40,c(-2)]
setdiff(names(demo1), names(demo2))

# ---------------------------------- setequals() is used to verify whether two vectors are identical
setequal(x,y)
