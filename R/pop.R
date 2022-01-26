
# 手順1: import data

# url for csv. file
url <- "https://raw.githubusercontent.com/Ricky-s-a/R_tutoring/main/Data/pop.csv"

# import data
pop <- read.csv(url)

# check
head(pop)

# 手順2: modeling

# define the linear model
pop.lm <- lm(number ~ year, data = pop)


# 手順3: visualization

# visualize
plot(pop)
abline(pop.lm, lwd = 2)

# coefficients
coefficients(pop.lm)

# correlation
cor(pop$year, pop$number)


# 手順4: the value estimation
pop_estimate <- function(year) {pop.lm$coefficients[[1]] + pop.lm$coefficients[[2]]*year}


# 手順5: data summarization
summary(pop.lm)

pop$pre <- predict(pop.lm)
pop$res <- residuals(pop.lm)

head(pop)

# APPENDIX
library(tidyverse)
library(modelr)

# define the data for visualization
pop_plot <- pop %>% 
  `names<-`(value = c("year", "raw", "residual", "predicted")) %>% 
  pivot_longer(cols = c(-year))

# raw v.s. expected value
pop_plot %>% 
  filter(name != "residual") %>% 
  ggplot(aes(year, value, color = name)) +
  geom_smooth(aes(color = name),
              size = 0.1,
              se = FALSE) +
  geom_point() +
  scale_x_continuous(breaks = seq(2000, 2010, by = 1)) +
  labs(title = "The scatter plot of the predicted value and raw data about pop",
       x = "Year",
       y = "Population",
       color = "Name")

# residual  
pop %>% 
  ggplot(aes(year, res)) +
  geom_ref_line(h = 0) +
  geom_point() +
  geom_smooth(se = FALSE) +
  scale_x_continuous(breaks = seq(2000, 2010, by = 1)) +
  labs(title = "The scatter plot about the residual",
       x = "Year",
       y = "Residuals")
