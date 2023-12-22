import math
def main():
    # n = int(input('Enter a number: '))
    # result = isPrime(n)
    # print(f'{n} is  prime: {result}')
    primeNoBetweenRange(3,25)


def isPrime(n):
    if(n == 2 | n == 3):
        return True
    if(n==1 | n % 2 == 0):
        return False
    for i in range(2,int(math.sqrt(n+1))):
        if(n%i == 0):
            return False
    return True

def primeNoBetweenRange(s,e):
    
    for i in range(s,e+1):
        if(isPrime(i)):
            print(i)
            
        
if __name__ == '__main__':
    main()    
        