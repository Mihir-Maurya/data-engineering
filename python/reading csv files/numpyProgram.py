import numpy as np 
# Creating array object 
arr = np.array( [[ 1, 2, 3], 
                 [ 4, 2, 5]] ) 

# Printing array dimensions (axes) 
print("No. of dimensions: ", arr.ndim) 
  
# Printing shape of array 
print("Shape of array: ", arr.shape) 
  
# Printing size (total number of elements) of array 
print("Size of array: ", arr.size) 
  
# Printing type of elements in array 
print("Array stores elements of type: ", arr.dtype) 


# Creating array from list with type float 
a = np.array([[1, 2, 4], [5, 8, 7]], dtype = 'float') 
print ("Array created using passed list:\n", a) 

# Creating array from tuple 
b = np.array((1 , 3, 2)) 
print ("\nArray created using passed tuple:\n", b)

# Creating a 3X4 array with all zeros 
c = np.zeros((3, 4)) 
print ("An array initialized with all zeros:\n", c) 
  
# Create a constant value array of complex type 
d = np.full((3, 3), 6, dtype = 'complex') 
print ("An array initialized with all 6s." 
            "Array type is complex:\n", d) 
  
# Create an array with random values 
e = np.random.random((2, 2)) 
print ("A random array:\n", e)

# Create a sequence of integers  
# from 0 to 30 with steps of 5 
f = np.arange(0, 30, 5) 
print ("A sequential array with steps of 5:\n", f)

# Reshaping 3X4 array to 2X2X3 array 
arr1 = np.array([[1, 2, 3, 4], 
                [5, 2, 4, 2], 
                [1, 2, 0, 1]]) 
  
newarr = arr1.reshape(2, 2, 3) 
  
print ("Original array:\n", arr1) 
print("---------------") 
print ("Reshaped array:\n", newarr)


# Flatten array 
arr2 = np.array([[1, 2, 3], [4, 5, 6]]) 
flat_arr = arr2.flatten() 
  
print ("Original array:\n", arr2) 
print ("Fattened array:\n", flat_arr)

# Slicing array 
temp = arr[:2, ::2] 
print ("Array with first 2 rows and alternate"
                    "columns(0 and 2):\n", temp) 

# An exemplar array 
arr4 = np.array([[-1, 2, 0, 4], 
                [4, -0.5, 6, 0], 
                [2.6, 0, 7, 8], 
                [3, -7, 4, 2.0]]) 
  

# Integer array indexing example 
temp = arr4[[0, 1, 2, 3], [3, 2, 1, 0]] 
print ("\nElements at indices (0, 3), (1, 2), (2, 1),"
                                    "(3, 0):\n", temp) 

a1 = np.array([1, 2, 5, 3]) 
  
# add 1 to every element 
print ("Adding 1 to every element:", a1+1) 
  
# subtract 3 from each element 
print ("Subtracting 3 from each element:", a1-3) 
  
# multiply each element by 10 
print ("Multiplying each element by 10:", a1*10) 
  
# square each element 
print ("Squaring each element:", a1**2) 
  
# modify existing array 
a1 *= 2
print ("Doubled each element of original array:", a1) 
  
# transpose of array 
a1 = np.array([[1, 2, 3], [3, 4, 5], [9, 6, 0]]) 
  
print ("\nOriginal array:\n", a1) 
print ("Transpose of array:\n", a1.T)


arr5 = np.array([[1, 5, 6], 
                [4, 7, 2], 
                [3, 1, 9]]) 
  
# maximum element of array 
print ("Largest element is:", arr5.max()) 
print ("Row-wise maximum elements:", 
                    arr5.max(axis = 1)) 
  
# minimum element of array 
print ("Column-wise minimum elements:", 
                        arr5.min(axis = 0)) 
  
# sum of array elements 
print ("Sum of all array elements:", 
                            arr5.sum()) 
  
# cumulative sum along each row 
print ("Cumulative sum along each row:\n", 
                        arr5.cumsum(axis = 1)) 


# Python program to demonstrate 
# binary operators in Numpy 

a2 = np.array([[1, 2], 
            [3, 4]]) 
b = np.array([[4, 3], 
            [2, 1]]) 
  
# add arrays 
print ("Array sum:\n", a2 + b) 
  
# multiply arrays (elementwise multiplication) 
print ("Array multiplication:\n", a2*b) 
  
# matrix multiplication 
print ("Matrix multiplication:\n", a2.dot(b)) 


c = np.array([[1, 4, 2], 
                 [3, 4, 6], 
              [0, -1, 5]]) 
  
# sorted array 
print ("Array elements in sorted order:\n", 
                    np.sort(c, axis = None)) 
  
# sort array row-wise 
print ("Row-wise sorted array:\n", 
                np.sort(c, axis = 1)) 
  
# specify sort algorithm 
print ("Column wise sort by applying merge-sort:\n", 
            np.sort(c, axis = 0, kind = 'mergesort')) 
  
