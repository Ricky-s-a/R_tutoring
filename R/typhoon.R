path <- "~/R/project/R_tutoring/Git/R_tutoring/Data"

typhoon <- read.csv(path)

# reset names of the columns 
columns <- c("year", month.abb, "annual_sum")
typhoon <- `names<-`(typhoon, columns)

# check
head(typhoon)


# no. of typhoons hitting japan each month
y <- apply(typhoon[1:70, 2:13], 2, sum, na.rm = TRUE)

# plot a bar plot
barplot(y, 
        ylim=c(0,80), 
        xlab='Month', 
        ylab = 'No. of Typhoons',
        main='Typhoons Hitting Japan Each Month')

typhoon <- read.csv(path)

# reset names of the columns 
columns <- c("year", month.abb, "annual_sum")
typhoon <- `names<-`(typhoon, columns)

# check
head(typhoon)


# no. of typhoons hitting japan each month
y <- apply(typhoon[1:70, 2:13], 2, sum, na.rm = TRUE)

# plot a bar plot
barplot(y, 
        ylim=c(0,80), 
        xlab='Month', 
        ylab = 'No. of Typhoons',
        main='Typhoons Hitting Japan Each Month')
