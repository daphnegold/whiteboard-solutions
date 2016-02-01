
# Given a matrix (2D array) and a value, write a function that determines whether or not the value exists in the matrix

def val?(arr, val)
  arr.each do |sub_arr|
    return true if sub_arr.include?(val)
  end

  return false
end
