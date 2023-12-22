import numpy as np

# creating an array
arr = np.array([1, 2, 3, 4, 5])
print(arr) # [1,2,3,4,5]
print(arr.dtype) # int32
print(arr.shape) # (5,)


print(arr*2) #multiply each element by 2
print(arr+2) #add each element by 2

print(max(arr)) # 5
print(min(arr)) #1



#creating 2-dimensional array
arr2 = np.array([[1,2,3],[4,5,6],[7,8,9]])
print(arr2)
print(arr2.max())  #9
print(arr2.min()) #1
print(arr2.max(axis=0)) #find maximum in column order
print(arr2.max(axis=1)) #find maximum in row order

#find transpose of the 2d array
print(arr2.T)
#create a 2d array of zeros
print(np.zeros((3,4),dtype=int))
