class Father:
    def func1(self):
        print("This is function 1")

class Mother:
    def func2(self):
        print("This is function 2")

class Child(Father, Mother):
    def func3(self):
        print("This is function 3")

obj = Child()
obj.func1()
obj.func2()
obj.func3()
