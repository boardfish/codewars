def duplicate_count(t)
  t.upcase.chars.group_by(&:itself).select {|k,v| v.size>1}.size
end
