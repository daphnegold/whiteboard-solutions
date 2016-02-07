# return the minimum number of coins to make change

def min_coins(cents)
  num = 0
  coins = [25, 10, 5, 1]

  coins.each do |coin|
    break if cents == 0
    next if cents < coin

    num += cents/coin
    cents %= coin
  end

  return num
end

# test
puts 99, min_coins(99)
puts 0, min_coins(0)
puts 12, min_coins(12)
puts 72, min_coins(72)
