def main():
    n = int(input('Enter a number: '))
    result = fib(n)
    print(f'fibonacci series of {n} : {result}')
    
    
def fib(n):
    fib_series = []
    a,b = 0 , 1
    for _ in range(n):
        fib_series.append(a)
        a,b = b,a+b
    return fib_series    
            
    
if __name__ == '__main__':
    main()    