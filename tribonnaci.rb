# https://www.codewars.com/kata/556deca17c58da83c00002db

def tribonacci(a, n)
  return n==3 ? a : a.first(n) if n<=3
  tribonacci(a+[a.last(3).sum],n-1)
end
