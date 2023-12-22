
class Father():
    def father_quality(self):
        print('inside Father class')
        print('Father has intellisense and deep thinking power')
        print('/n')

       
class Son1(Father):
    def son1_quality(self):
        print('inside Son1 class')
        print('child wants to be a software engineer')
        print('\n')        

kundan = Son1()
kundan.father_quality()
kundan.son1_quality()

class Son2(Father):
    def son2_quality(self):
        print('inside Son2 class')
        print('child wants to be a software engineer')
        print('\n')         
s2Obj = Son2()
s2Obj.father_quality()

s2Obj.son2_quality()        