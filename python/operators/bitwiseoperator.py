first_number = int(input("Enter first number: "))
second_number = int(input("Enter second number: "))

#& , | , ~ , ^

if first_number % 2 == 0 & second_number % 2 == 0:
    print("both numbers are even")
    
if(first_number % 2 ==0 | second_number % 2 ==0):
    print("either one number is even")        

#xor
print(first_number^second_number) # xor of two numbers
print(~first_number)  
print(first_number>>1)    #left shift
print(first_number<<1)    #right shift