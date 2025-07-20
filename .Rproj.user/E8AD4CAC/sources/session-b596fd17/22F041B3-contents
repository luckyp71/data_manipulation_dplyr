require(dplyr)

# filter() select rows in a data frame, based on one or multiple criteria
# select(): select columns in a data frame 
# mutate(): add new columns to a data frame
# arrange(): sort the observatioins in a data frame, based on one or several criteria
# summarise(): compute summary statistic for the numeric variables in a data frame
# group_by() convert our data frame in a grouped data frame

# ******************************************* filter command
demo <- read.csv('./data/demographics.csv')

head(demo)

str(demo)

View(demo)

demo2 <- demo%>%filter(income>50)

View(demo2)

# ------------------------------------------- AND OPERATOR

demo2 <- filter(demo, income > 50 & marital=='Married')

View(demo2)

# , (comma) same with &
demo2 <- filter(demo, income > 50, marital=='Married')

View(demo2)

demo2 <- filter(demo, income > 50, marital=='Married',
                gender=='Male')

View(demo2)

demo2 <- filter(demo, age>=35, age<40)

View(demo2)

# --------------------------------------------- OR OPERATOR

demo2 <- filter(demo, age > 30 | marital=='Married')
View(demo2)


# ----------------------------------------------- IN Keyword

# the age in
demo2 <- filter(demo, age %in% c(30,35,40))

View(demo2)

# the age not in
demo2 <- filter(demo, !age %in% c(30,35,40))
View(demo2)


# ********************************************** select command

head(demo2)

demo2 <- select(demo, age, marital, gender)

head(demo2)

# select using slice :
demo2 <- select(demo, income:carcat)
head(demo2)

# select variable using col number
demo2 <- select(demo, c(3,5))
head(demo2)

# remove variable age and income
demo2 <- select(demo, -age, -income)
head(demo2)


# ------------------------------- Using summarise to aggregate data
demo2%>%
  filter(age>35)%>%
  summarise(avginc=mean(income, na.rm=TRUE),
            stdincome=sd(income, na.rm=TRUE),noc=n())

demo2%>%
  filter(age>35)%>%
  summarise(across(c(mean_age='age', mean_income='income'), mean))


demo2%>%
  select(where(is.numeric))%>%
  summarise(across(everything(), mean, na.rm=TRUE), noc=n())

# ---------------------- group by -------------------------
View(demo)

demo2%>%
  group_by(educ)%>%
  summarise(avg_income=mean(income), noc=n())%>%
  arrange(desc(avg_income))


num_cols <-  demo2%>%
  select(where(is.numeric))%>%names()


demo2%>%
  group_by(educ)%>%
  select(where(is.numeric))%>%
  summarise(across(all_of(num_cols), mean, .names="mean_{.col}"),
            across(all_of(num_cols), sd, .names="std_{.col}"))




















