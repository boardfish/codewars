# https://www.codewars.com/kata/520b9d2ad5c005041100000f
def pig_it(t)
  t.split.map{|w| w[1..-1]+w[0]+(w.gsub(/\W/,'').empty? ? '': 'ay')}*' '
end

puts pig_it('Pig latin is cool')
puts pig_it('This is my string')
puts pig_it('Hellow world !')
