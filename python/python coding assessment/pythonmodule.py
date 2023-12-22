
# Explain Python Module with examples
# a.Import module in Python
# .Renaming the Python module

#module is like a file in python which contains some functions to do some tasks
# userdefined module 
import mathfile as math # import the mathfile module as math(renaming the module)

#  add function from the mathfile module
add_result = math.add(10, 5)
print(add_result) #  15

#  subtract function from the mathfile module
subtract_result = math.subtract(10, 5)
print(subtract_result) #  5

#multiply function from the mathfile module
multiply_result = math.multiply(10, 5)
print(multiply_result) # 50




#some predefined module in python
import datetime as time #renaming datetime module as time

print(time.datetime.now()) #get current date and time
date_time = time.datetime.now()

print(date_time.year) #get current year
print(date_time.month) #get current month
print(date_time.day) #get current day

#predefined math module
import math as mt #renaming math module to mt 

print(mt.sqrt(64)) #8.0
print(mt.factorial(5)) #120
print(mt.pow(2, 3)) #8.0

#just like this we have many modules in python