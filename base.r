library(dplyr)
bdata <- read.csv("c:\\hutton\\r_reproduce\\activity.csv")

#### the following will give the total number of steps per day
zip2 <- group_by(bdata,date)
zip3 <- summarise(zip2,step_cnt = sum(steps,na.rm = TRUE))

by_tailnum <- group_by(flights, tailnum)
delay <- summarise(by_tailnum,
                   count = n(),
                   dist = mean(distance, na.rm = TRUE),
                   delay = mean(arr_delay, na.rm = TRUE))
delay <- filter(delay, count > 20, dist < 2000)
zip2a <- group_by(bdata,date)
daily <- summarise(zip2a,mean(steps,na.rm = TRUE) ,median(steps,na.rm = TRUE))
##       summarise(grouped, mean=mean(value), sd=sd(value))
daily <- summarise(zip2a,step_cnt = sum(steps,na.rm = TRUE),
                   max1 = max(steps,na.rm=TRUE),
                   mean = mean(steps,na.rm=TRUE),
                   medium = median(steps[steps>0])
                     )

## hist(daily$step_cnt,col="blue")
plot(daily$step_cnt,type="h")
hist(daily$step_cnt)