# Given a 2D array matrix of integers ordered along each axis, return the number of negative integers (without traversing every index).

def count_negatives(array)
  col = array.length - 1
  row = 0
  count = 0
  while (row < array.length) && (col >= 0)
    if array[row][col] < 0
      count += (col + 1)
      row += 1
    else
      col -= 1
    end
  end

  return count
end
