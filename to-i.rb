# convert a string to its integer equivalent

def to_i(string)
  ints = {}
  num = 0

  (0..9).each { |n| ints[n.to_s] = n }

  string.reverse.split("").each_with_index do |sn, i|
    num += ints[sn] * 10**i
  end

  return num
end

# test
s = "1234"
puts to_i(s), to_i(s).class
s = "0"
puts to_i(s), to_i(s).class
s = "9999999"
puts to_i(s), to_i(s).class
