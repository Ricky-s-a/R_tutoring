

# load file ---------------------------------------------------------------

path <- "~/R/project/R_tutoring/Git/R_tutoring/Data/kadai01.csv"
pacman::p_load("tidyverse")

df <- read_csv(path, locale = locale(encoding = "UTF-8"))
df <- read_csv(path, locale = locale(encoding = "shift-jis"))

df <- read_delim(path, local = "UTF-8")


  head(df)
