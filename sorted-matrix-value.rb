# Given a matrix (two-dimentional array) that is organized from largest to lowest in each row and column how would you find out if the given integer was in the array.
# e.g.
# [ 51, 50, 37]
# [ 47, 30, 12]
# [ 33, 28, 05]

def value?(arr, val)
  row = 0
  col = arr.length - 1

  while row < arr.length && col >= 0
    if val == arr[row][col]
      return true
    elsif val > arr[row][col]
      col -= 1
    else
      row += 1
    end
  end

  return false
end
