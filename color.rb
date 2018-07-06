def rth(r,g,b)
  [r,g,b].map{|c|'%02X'%c.clamp(0,255)}*''
end

puts rth(0,0,0)
puts rth(255,0,0)
