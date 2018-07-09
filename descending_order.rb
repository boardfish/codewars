# https://www.codewars.com/kata/5467e4d82edf8bbf40000155

def descending_order(n)
  n.to_s.chars.sort_by(&:to_i).reverse*''
end

puts descending_order(12345)
puts descending_order(123456789)
puts descending_order(11037)
