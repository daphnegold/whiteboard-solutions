# Write a function that takes in an unsorted array of numbers where one number is missing and one number is duplicated. Find the duplicate and the missing number.

require 'set'

def missing_dup(arr)
  nums = Set.new
  actual_sum = 0
  expected_sum = (0..arr.length).inject(:+)
  dup = nil

  arr.each do |val|
    if !nums.add?(val)
      dup = val
    end

    actual_sum += val
  end

  missing = expected_sum - (actual_sum - dup)
  return dup, missing
end

# test

a = [5, 2, 4, 1, 5, 6]
puts missing_dup(a)
a = [2, 1, 3, 6, 5, 6, 4]
puts missing_dup(a)
a = [3, 2, 2]
puts missing_dup(a)
