# https://www.codewars.com/kata/52774a314c2333f0a7000688

def valid_parentheses(s)
  s=s.tr('^[()]+','')
  puts s
  false if (s[0]==')' || s[-1]=='(')
  i,j=s.split('').partition{|x| x=='('}
  i.size==j.size
end

puts valid_parentheses('hi())(')
