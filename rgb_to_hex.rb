# https://www.codewars.com/kata/513e08acc600c94f01000001

def rgb(r, g, b)
  [r,g,b].map{|c|'%02X'%c.clamp(0,255)}*''
end