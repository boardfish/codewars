def solution(number)
  s=0
  (number-1).times{|i| x=i+1
    s+=(x%3).zero?||(x%5).zero? ? x : 0 }
  s
end

puts "Solution(10): #{solution(10)}"
puts "Solution(20): #{solution(20)}"
puts "Solution(200): #{solution(200)}"
