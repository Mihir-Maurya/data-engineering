class Dog:
    #class attributes
    attr1 = "mammal"
    
    #instance attributes
    def __init__(self , name):
        self.name = name
    
#Object Instantiation
dog1 = Dog("Rodger")
dog2 = Dog("Tommy")

#Accessing class attributes
print(f"Dog1 is a {dog1.__class__.attr1}")
print(f"Dog2 is also a {dog2.__class__.attr1}")

#Accessing instance attributes
print(f"My name is {dog1.name}")
print(f"My name is {dog2.name}")





#Creating Classes and objects with methods
class Animal:
    
    #class attribute
    attr1 = "mammal"
    
    #Instance attribute
    def __init__(self,name):
        self.name = name
    
    def speak(self):
        print(f"My name is {self.name}")        

#Object instantiation
dog1 = Animal("Rodger")
dog2 = Animal("Tommy")

dog1.speak()
dog2.speak()
           
           