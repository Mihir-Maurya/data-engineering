# Add 10 to argument a, and return the result:
x = lambda a:a+10
print(x(30))

y = lambda a , b:a+b
print(y(30,20))

def myfunction(n):
    print(n)
    return lambda x : x * n

fun = myfunction(6)
print(fun(5))


def myfunc(n):
  return lambda a : a * n

mydoubler = myfunc(2)
mytripler = myfunc(3)

print(mydoubler(11))
print(mytripler(11))
