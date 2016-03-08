R Programming Assignment
================================
Histogram of Daily Steps
```{r}
library(dplyr)
bdata <- read.csv("c:\\hutton\\r_reproduce\\activity.csv")
zip2 <- group_by(bdata,date)
zip2a <- group_by(bdata,date)
	
zip3 <- summarise(zip2,step_cnt = sum(steps,na.rm = TRUE))
daily <- summarise(zip2a,step_cnt = sum(steps,na.rm = TRUE),
                   max1 = max(steps,na.rm=TRUE),
                   mean = mean(steps,na.rm=TRUE),
                   medium = median(steps[steps>0])
                     )
hist(daily$step_cnt)
```

Mean - medium
```{r}
daily
```

