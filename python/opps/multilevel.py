class Grandfather:
    def gf_quality(self):
        print('inside Father class')
        print('Father has intellisense and deep thinking power')
        print('/n')
gfObj = Grandfather()
class Father(Grandfather):
    def father_quality(self):
        print('inside Father class')
        print('Father has intellisense and deep thinking power')
        print('/n')
fObj = Father()        
class Son(Father):
    def aim(self):
        print('inside Son class')
        print('child wants to be a software engineer')
        print('\n')        
        
sObj = Son()
sObj.gf_quality()
sObj.father_quality()
sObj.aim()        