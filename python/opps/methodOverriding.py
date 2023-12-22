class Bird:
    #constructor
    def __init__(self, name):
        self.name = name
    def print_info(self):
        print('This bird is: ', self.name)
        
    def fly(self):
        print('the bird can fly')
#parrot class inherits from Bird class with all attributes
class Shalik(Bird):
    def __init__(self,name,color,character):
        #call the constructor of parent class
        super().__init__(name)
        self.color = color
        self.character = character
    #override method
    def print_info(self):
        #call the method of parent class 
        super().print_info()
        print('color of bird is:',self.color)    
        print('color of bird is:',self.character)    
      #override method
    def fly(self):
        print('the bird can fly')
        
obj_shalik = Shalik('Shalik','black','not good')                    
obj_shalik.fly()                
obj_shalik.print_info()                
                