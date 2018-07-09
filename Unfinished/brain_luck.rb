def brain_luck(code, input)
  data = []
  pointer = 0
  code.chars.each_with_index do |char, i|
    case char
    when '>'
      pointer = (pointer >= 255 ? 0 : (pointer + 1))
    when '<'
      pointer = (pointer >= 0 ? 255 : (pointer - 1))
    when '+'
      if data[pointer].nil? || data[pointer] == 255.chr
        data[pointer] = 0.chr
      end
      data[pointer].next!
    when '-'
      if data[pointer].nil?
        data[pointer] = 255.chr
        next
      end
      data[pointer].previous!
    when '.'
      puts
      return data.join
    when ','
      data[pointer] = input.slice!(0)
    when '['
      if data[pointer].nil? || data[pointer].to_i.zero?
        # slice to current
        pointer = code.chars[i..-1].find_index(']') + 1
        # get index
      end
    when ']'
      unless data[pointer].nil? || data[pointer].to_i.zero?
        # slice after current
        pointer = code.chars[0..i].find_index('[') + 1 + i
        # get index of LAST [
      end
    end
    puts "#{char}: #{data}"
  end
end

puts brain_luck(',+[-.,+]', 'Codewars' + 255.chr)