set3 = {"Hexaware", "for", "Hexaware"}
print(type(set3))
set3.add(6)

set3.add(7)
print(set3)
set3.remove(6)
print(set3)

# typecasting list to set
myset = set(["a", "b", "c"])

print(myset)
 
# Adding element to the set
myset.add("d")
myset.pop() #remove random element from set
myset.discard("a") #remove a from the set
print(myset)


# Same as {"a", "b","c"}
normal_set = set(["a", "b","c"])
 
print("Normal Set")
print(normal_set)
 
 
 
 
# A frozen set
frozen_set = frozenset(["e", "f", "g"])
# frozen_set.add("p")
print(frozen_set)



#union

set1 = set()
set2 = set()

for i in range(6):
    set1.add(i)
for i in range(4,10):
    set2.add(i)



print(set1.union(set2) ) # union using function
print(set1 | set2) #union using |   

#intersection
print(set1.intersection(set2))
print(set1 & set2) # intersection using &






#difference between set1 and set2
#the difference() function in sets is used to find the elements that exist in one set but not in another. It returns a new set containing the elements that are present in the first set but not in the second set.

print(set1)
print(set2)
# set4 = set1.difference(set2)
set4 = set1 - set2
print(set4)

set4.clear()
print(set4)

print(set1 == set2)
print(set1 != set2)

set5 = ([1,2,3,4])
set6 = ([1,2,3,4,5])
print(set5 < set6) #s5 is proper subset of s6


#copy
newset1 = [1,2,3,4]
newset2 = [5,6,7,8]

copiedset = newset2.copy()

print(newset1)
print(newset2)
print(copiedset)