nt(f"IdNumber {self.idnumber}")        

#child class
class Employee(Person):
    def __init__(self,name,idnumber,salary,post):
        self.salary = salary
        self.post = post
        
        #invoking the __init__ of the parent class
        Person.__init__(self,name,idnumber)
    
    def details(self):
        print(f"My name is {self.name}")
        print(f"IdNumber: {self.idnumber}")
        print(f"Post:self.post")    

#creation of an object variable or an instance
a = Employee('Rahul',80000,232423,"Intern")

# calling a function of the class Person using
# its instance

a.display()
a.details()