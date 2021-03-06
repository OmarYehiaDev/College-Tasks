def is_magic_square():
    # Convert string input to matrix
    square = list(eval(input("Enter square:\t")))
    result = "MAGIC"
    sqLen = len(square)
    magic_constant = 0
    # For defining the magic constant which is
    # the sum of any row, column, or diagonal
    for n in square[0]:
        magic_constant += n
    # For testing rows
    for i in range(sqLen):
        sum_row = 0
        for j in range(sqLen):
            sum_row += square[i][j]
        if sum_row != magic_constant:
            result = "NOT MAGIC"
    
    # For testing columns
    for i in range(sqLen):
        sum_col = 0
        for j in range(sqLen):
            sum_col += square[j][i]
        if sum_col != magic_constant:
            result = "NOT MAGIC"

    # For testing diagonals
    sum_diag = 0
    # LTR Direction
    for i in range(sqLen):
        sum_diag += square[i][i]
    if sum_diag != magic_constant:
        result = "NOT MAGIC"

    sum_diag = 0
    # RTL Direction
    for i in range(sqLen):
        sum_diag += square[i][-(i+1)]
    if sum_diag != magic_constant:
        result = "NOT MAGIC"
            
    print(result)

is_magic_square()