import time
import calendar

print (time.localtime())

ticks = time.time()
print ("Number of ticks since 12:00am, January 1, 1970:", ticks)

#get calendar for month
cal = calendar.month(2023, 4)
print ("Here is the calendar:")
print (cal)

from datetime import datetime
dt = datetime.now()

print("Day: ", dt.day)
print("Month: ", dt.month)
print("Year: ", dt.year)
print("Hour: ", dt.hour)
print("Minute: ", dt.minute)
print("Second: ", dt.second)