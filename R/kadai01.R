
library(tidyverse)

# load file ---------------------------------------------------------------

path <- "~/R/project/R_tutoring/Git/R_tutoring/Data/kadai01.csv"

df <- read_csv(path, locale = locale(encoding = "UTF-8"))

df <- df %>% 
  mutate(pref = c("Hokkaido", "Aomori", "Iwate", "Miyagi", "Akita", "Yamagata", 
   "Fukushima", "Ibaraki", "Tochigi", "Gunma", "Saitama", "Chiba", 
   "Tokyo", "Kanagawa", "Niigata", "Toyama", "Ishikawa", "Fukui", 
   "Yamanashi", "Nagano", "Gifu", "Shizuoka", "Aichi", "Mie", "Shiga", 
   "Kyoto", "Osaka", "Hyogo", "Nara", "Wakayama", "Tottori", "Shimane", 
   "Okayama", "Hiroshima", "Yamaguchi", "Tokushima", "Kagawa", "Ehime", 
   "Kochi", "Fukuoka", "Saga", "Nagasaki", "Kumamoto", "Oita", "Miyazaki", 
   "Kagoshima", "Okinawa")
  )

df
