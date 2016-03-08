t1 <- group_by(bdata,interval)
t2 <- summarise(t1,avg_period = mean(steps,na.rm=TRUE) )
plot(t2$avg_period,t2$interval,type="l",xlab="Interval",ylab="All Days")

rows_in_data <- nrow(bdata)
bdata1 <- bdata
for ( i in 1:rows_in_data ) {
	step_value <- bdata1[i,"steps"]
	if (is.na(step_value)) {
		missing_interval <- bdata1[i,"interval"]as
		value1 <- t2[which(t2$interval == missing_interval),2]
		bdata1[i,"steps"] = value1
      }
}

daily1[] <- lapply(daily1,as.character)
weekDay <- function(x) {
	date1 <- weekdays(as.Date(x))
	return_value <- date1

	return_value
}

weekDay <- function(x) {
	date1 <- weekdays(as.Date(x))
	return_value <- "Weekday"
	if (date1 == "Sunday") {
		return_value <- "Weekend"
	}
	if (date1 == "Saturday") {
		return_value <- "Weekend"
	}
	return_value
}

rows_in_data <- nrow(bdata1)
for ( i in 1:rows_in_data ) {
	value1 <- daily1[i,"date"]
	daily1[i,"dayType"] = weekDay(value1[[1,1]])

}

weekDay(daily1[[1,1]])

daily1$dayType <- weekDay(daily1$date]])


	