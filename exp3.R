# Define the given matrices 
matrix_A <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2) 
matrix_B <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2) 
# Display the given matrices 
cat("Matrix A:\n", matrix_A, "\n") 
cat("Matrix B:\n", matrix_B, "\n") 
# Addi on 
matrix_addi on <- matrix_A + matrix_B 
cat("Matrix Addi on:\n", matrix_addi on, "\n") 
# Subtrac on 
matrix_subtrac on <- matrix_A - matrix_B 
cat("Matrix Subtrac on:\n", matrix_subtrac on, "\n") 
# Mul plica on 
matrix_mul plica on <- matrix_A %*% matrix_B 
cat("Matrix Mul plica on:\n", matrix_mul plica on, "\n") 
# Inverse of Matrix A 
if (det(matrix_A) != 0) { 
  inverse_A <- solve(matrix_A) 
  cat("Inverse of Matrix A:\n", inverse_A, "\n") 
} else { 
  cat("Matrix A is not inver ble.\n") 
} 
