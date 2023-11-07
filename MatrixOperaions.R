#1.Create two matrices, matrix_A and matrix_B
a=matrix(c(1,2,3,4),ncol=2,nrow = 2,byrow=TRUE)
b=matrix(c(1,2,3,4),ncol=2,nrow = 2,byrow=TRUE)
a
b
#2.Calculate the sum of matrix_A and matrix_B and store the result in a new matrix named matrix_sum.

matrix_sum=a+b
matrix_sum
#3.Calculate the difference between matrix_A and matrix_B and store the result in a new matrix named matrix_diff.
matrix_diff=a-b
matrix_diff
#4.Multiply matrix_A by a scalar value of 2 and store the result in a new matrix named matrix_mul
matric_mult = a*2
matric_mult
#5.Calculate the product of matrix_A and matrix_B and store the result in a new matrix namedmatrix_product.

matrix_pro=a*b
matrix_pro
#6.Find the transpose of matrix_A and store the result in a new matrix named matrix_A_transpose.
matrixtrans=t(a)
matrixtrans
#7.Calculate the determinant of matrix_B and store it in a variable named determinant_B.
matrixdet=det(b)
matrixdet
#8.Invert matrix_B to obtain the inverse matrix and store it in a new matrix named matrix_B_inverse.
matrixinv=solve(b)
matrixinv
#9.Check if matrix_B is orthogonal (i.e., its transpose is equal to its inverse).

matrixtransb=t(b)
matrixtransb
y= matrixtransb==matrixinv
c=0
 for(x in y)
 {
   if (x == FALSE){
     c=1
     break
   }
 }
if(c==0){
  print("it is orthognal")
}else{
  print("it is not orthogonal")
}
#10.Calculate the element-wise square root of matrix_A and store the result in a new matrix named matrix_A_sqrt
matrix_A_sqrt = sqrt(a)
matrix_A_sqrt
#11.Calculate the mean of all the elements in matrix_B.

print(mean(b))
#12.Calculate the sum of each column in matrix_A.
sum_matrix_A = c(sum(a[,1]),sum(a[,2]))
sum_matrix_A
#13.Calculate the row means of matrix_B.

row_means_matrix_B <- c(mean(b[1,]),mean(b[2,]))
row_means_matrix_B
#14.Extract the second row of matrix_A and store it in a vector named second_row_A.

second_row_A <- c(a[2,])
second_row_A
#15.Extract the third column of matrix_B and store it in a vector named third_column_B.
third_column_B <- b[,2]
third_column_B







