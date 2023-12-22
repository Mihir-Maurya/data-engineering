
class Father():
    def father_quality(self):
        print('inside Father class')
        print('Father has intellisense and deep thinking power')
        print('/n')
class Mother:
    def mother_quality(self):
        print('inside Father class')
        print('Father has intellisense and deep thinking power')
        print('/n')
       
class Son(Father,Mother):
    def son_quality(self):
        print('inside Son class')
        print('child wants to be a software engineer')
        print('\n')        
        
sObj = Son()
sObj.father_quality()
sObj.mother_quality()
sObj.son_quality()        