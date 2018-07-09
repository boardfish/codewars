# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1

def duplicate_count(t)
  t.upcase.chars.group_by(&:itself).select {|k,v| v.size>1}.size
end
