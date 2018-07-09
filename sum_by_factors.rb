# http://www.codewars.com/kata/54d496788776e49e6b00052f

require 'prime'

def sumOfDivided(lst)
  return_list = []
  Prime.each(lst.map(&:abs).max) do |i|
    summed_divided = lst.select { |e| (e % i).zero? }.sum
    return_list.append([i, summed_divided.sum]) unless summed_divided.size.zero?
  end
  return_list
end