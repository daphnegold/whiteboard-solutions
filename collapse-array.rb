# Given a sorted positive integer array [1,2,3,5,8,10,11,12,15], write a function that would return a string with the ranges collapsed like “1-3,5,8,10-12,15”

def collapse(arr)
  start = arr[0]
  collapsed = []
  i = 1

  until start.nil?
    last = arr[i - 1]
    unless last + 1 == arr[i]
      if start != last
        collapsed.push(start.to_s + "-" + last.to_s)
      else
        collapsed.push(start)
      end
      start = arr[i]
    end
    i += 1
  end

  return collapsed.join(", ")
end

def collapse_again(arr)
  range = ""
  no_commas_here = arr.last

  return "" if arr.empty?

  start = arr.shift
  last = start
  while last + 1 == arr.first
    last = arr.first
    arr.shift
  end

  if start == no_commas_here
    return range += start.to_s + collapse_again(arr)
  elsif start != last
    return range += start.to_s + "-" + last.to_s + ", " + collapse_again(arr)
  else
    return range += start.to_s + ", " + collapse_again(arr)
  end
end
