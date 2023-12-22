list = [1,2,3,4,5,6,7,8,9]
print(list) # print all list items
print(list[1:5]) #print list from index 1 to 4
print(list[-1:-1:]) #empty list
print(list[::-1]) #print from end
print(list[:1:-2])#print from end and stop at index 1 step of 2

#modify list
list[2:5] = [20,21,22]
print(list)

#creating  new list
newList = list[:3]+list[5:8] 
print(newList)
newList[2:4] = [] # removing some items from index 2 to 3
print(newList)