# https://www.codewars.com/kata/54b42f9314d9229fd6000d9c
def duplicate_encode(t)
  t.downcase!
  t.downcase.chars.map{|c| t.count(c)>1 ? ')' : '('}.join
end
