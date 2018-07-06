def duplicate_encode(t)
  t.downcase!
  t.downcase.chars.map{|c| t.count(c)>1 ? ')' : '('}.join
end
