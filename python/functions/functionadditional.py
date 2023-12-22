# *args for variable number of arguments
def myFun(*argv):
    for arg in argv:
        print(arg)
 
 
myFun('Hello', 'Welcome', 'to', 'HexaforHexa')


# default arguments
def myFun(x, y=50):
    print("x: ", x)
    print("y: ", y)
 
# argument)
myFun(10)

# Here x is a new reference to same list lst
def myFun(x):
    x[0] = 20
 

lst = [10, 11, 12, 13, 14, 15]
myFun(lst)
print(lst)