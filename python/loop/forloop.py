#print 1 to 10
# for i in range(10):
#     print(i+1)

#print 1 to 10 only even numbers
for i in range(1,10,2):
    print(i+1)
    
#nested loops
for i in range(1,5):
    for j in range(1,i):
        print(j  , end=' ')
    print(i," ")
    
#print left triangle shape star
for i in range(6):
    for j in range(i):
        print("*", end=' ')   
    print(" ")                    

print("----")    
#print rectangle shape star
for i in range(6):
    for j in range(6):
        print("*", end=' ')
    print(" ") 
    
    
#prime number between 1 to 100
for n in range(1,100+1):
    count = 0
    for i in range(1,n+1):
        if(n%i == 0):
            count = count + 1
    if count == 2:
        print(n," ")       
            
            
        
          