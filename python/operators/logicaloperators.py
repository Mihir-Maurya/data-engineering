first_number = int(input("Enter first number: "))
second_number = int(input("Enter second number: "))
#'AND -> if all conditions are true, then it will run' 
if(first_number<50 and second_number < 50):
    print("both numbers are less than 50")
elif(first_number>50 and second_number>50):
    print("both numbers are greater than 50")
elif(first_number==50 and second_number==50):
    print("both numbers are equal to 50")
else:
    print("either first or second number is greater or lesser than 50")
    
    #or
if(first_number >50 or second_number > 50):
    print("either first or second number is greater than 50")
elif(first_number < 50 or second_number<50):
    print("either first or second number is less than 50")
else:
    print("both are equal to 50")                 