class Father:
    def quality(self):
        print('inside Father class')
        print('Father has intellisense and deep thinking power')
        print('/n')
        
class Son(Father):
    def aim(self):
        print('inside Son class')
        print('child wants to be a software engineer')
        print('\n')        
        
obj = Son()
obj.quality()
obj.aim()        