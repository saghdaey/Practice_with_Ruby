# App Academy mini curriculum, Array Section
# matrix transposition exercise


rows=[
    [0,1,2],
    [3,4,5],
    [6,7,8]
    ]
cols=[
    [0,3,6],
    [1,4,7],
    [2,5,8]
    ]
    
# for 3 x 3 matrices: 

def My_Transpose(nums) 
    transposed_matrix=[]
    givens_0=nums[0]
    givens_1=nums[1]
    givens_2=nums[2]
    
    transposed_matrix[0]=[givens_0[0],givens_1[0],givens_2[0]]
    transposed_matrix[1]=[givens_0[1],givens_1[1],givens_2[1]]
    transposed_matrix[2]=[givens_0[2],givens_1[2],givens_2[2]]
    
    puts("the first row of the transposed_matrix[0] is #{transposed_matrix[0]}")
end

My_Transpose(cols)
