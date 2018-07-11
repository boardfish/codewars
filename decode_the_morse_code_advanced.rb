# http://www.codewars.com/kata/54b724efac3d5402db00065e

def decodeBits(bits)
  # trim to first occurrence of a 1
  bits = bits.to_i.to_s.reverse.to_i.to_s.reverse
  # get all 0 and 1 groups, find minimum length used
  time_unit = bits.scan(/(0+|1+)/).uniq.map { |bit| bit[0].length }.min
  # break down sequences by the time_unit and convert to ..--
  bits.split('0' * 7 * time_unit)
      .map do |word|
    word.split('0' * 3 * time_unit)
        .map do |char|
      char.split('0' * time_unit)
          .map { |char| char == '1' * time_unit ? '.' : '-' }
          .join
    end.join(' ')
  end.join('   ')
end

def decodeMorse(morseCode)
  sentence = morseCode.strip.split('   ').map do |word|
    word.split.map { |char| MORSE_CODE[char] }.join
  end
  sentence.join(' ')
end
