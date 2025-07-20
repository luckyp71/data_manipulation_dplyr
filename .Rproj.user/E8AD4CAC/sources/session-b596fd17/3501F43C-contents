require(ggplot2)
require(plotly)
require(dplyr)

demo <- read.csv('./data/demographics.csv')

View(demo)

# ---------------------------------------- BAR CHART
# plot avg car price by category
plot_data <- demo%>%
  group_by(carcat)%>%
  summarise(avgpr=mean(carpr, na.rm=TRUE))%>%
  mutate(car_category = reorder(carcat, desc(avgpr)))

View(plot_data)

v <-  ggplot(plot_data, aes(x=car_category, y=avgpr))+
  geom_col(aes(fill=I("blue")))+
  labs(
    x="Category",
    y="Avg Price",
    title="Average Car Price by Category"
  )+
  theme_minimal()

ggplotly(v, tooltip = c('x','y'))

# plot maximum car price by category
plot_data <- demo%>%
  group_by(carcat)%>%
  summarise(maxpr=max(carpr, na.rm = TRUE))%>%
  mutate(car_category=reorder(carcat, desc(maxpr)))

v <- ggplot(plot_data, aes(x=car_category, y=maxpr))+
  geom_col(aes(fill = I('orange')))+
  labs(
    x='Car Category',
    y="Maximum Price",
    title='Maximum Car Price by Category'
  )+
  theme_minimal()

ggplotly(v, tooltip = c('x','y'))


# ------------------------------------------- Line Chart
# example 1
plot_data <- demo%>%
  group_by(educ)%>%
  summarise(avg_inc = mean(income, na.rm=TRUE))%>%
  mutate(education_level = reorder(educ, avg_inc))

View(plot_data)

# import group keyword in aes
v <- ggplot(plot_data, aes(x=education_level, y=avg_inc, group=1))+
  geom_line(aes(color=I('orange')))+
  geom_point(color=I('red'), size=2)+
  labs(
    x="Education Level",
    y="Average Income",
    title="Average Income by Education Level"
  )+
  theme_minimal()

ggplotly(v, tooltip = c('x','y'))


# example 2
View(demo)

plot_data <- demo %>%
  group_by(gender, marital)%>%
  summarise(avg_income = mean(income, na.rm=TRUE))%>%
  mutate(gender_ = reorder(gender, avg_income))


v <- ggplot(plot_data, aes(x=marital, y=avg_income))+
  geom_line(aes(color=gender, group=gender))+
  geom_point(color=I('orange'), size=2)+
  labs(
    x='Gender',
    y='Avg Income',
    title='Avg Income by Gender and Marital Status'
  )+
  theme_minimal()

ggplotly(v, tooltip = c('x','y'))

# ----------------------------- Scatter Plot

mk <- read.csv('./data/marketingdb.csv')

View(mk)

mk %>%
  ggplot(aes(x=age, y=income, color=gender))+
  geom_point(size=2)+
  theme_minimal()


mk %>%
  filter(card=='Mastercard')%>%
  ggplot(aes(x=age, y=income, color=gender))+
  geom_point()+
  theme_minimal()



# --------------------------- Histogram





























































