# https://www.codewars.com/kata/523f5d21c841566fde000009
# Including this one for a joke because I'm an idiot.
def array_diff(a, b)
  a.delete_if{|i| b.include? i}
end