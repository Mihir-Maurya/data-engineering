first_number = int(input("Enter first number: "));
second_number = int(input("Enter second number: "));

if(first_number>second_number):
    print("first number is greater than second number by ",first_number-second_number);
elif(first_number<second_number):
    print("second number is greater than first number by ",second_number-first_number);
else:
    print("both first and second numbers are equal ",first_number,second_number);
         