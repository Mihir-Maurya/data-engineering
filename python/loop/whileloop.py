
#print 1 to 10
i = 1
while(i<=10):
    print(i)
    i +=1

#print 1 to 10 skip 5

i = 0
while(i<10):
    i+=1
    if i == 5:
        continue
    print(i)
        
#infinite loop
while(True):
    input_number = int(input("Enter a number which is even: "))
    if input_number % 2 == 0:
        print('input_number is even')
        break;        
    
def is_prime(n):
   if n in [2, 3]:
       return True
   if (n == 1) or (n % 2 == 0):
       return False
   r = 3
   while r * r <= n:
       if n % r == 0:
           return False
       r += 2
   return True
print(is_prime(78), is_prime(79))


def fibonacci(n):
    fib_series = []
    a, b = 0, 1
    for _ in range(n):
        fib_series.append(a)
        a, b = b, a + b
    return fib_series

# Generate Fibonacci series up to 10 terms
n = 10
result = fibonacci(n)
print(f"Fibonacci series up to {n} terms:", result)
