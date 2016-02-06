# sort an array of words alphabetically and return it
require 'pry'
def sort_words(arr)
  arr.length.times do
    (arr.length-1).downto(1) do |i|
      if arr[i-1] > arr[i]
        binding.pry

        temp = arr[i]
        arr[i] = arr[i-1]
        arr[i-1] = temp
      end
    end
  end

  return arr
end

# test
arr = ["wow", "him", "his", "him", "he"]
puts sort_words(arr)

arr = ["frog", "cow", "cat", "horse", "dog"]
puts sort_words(arr)
