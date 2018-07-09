# http://www.codewars.com/kata/54b724efac3d5402db00065e

def decodeMorse(morseCode)
  sentence = morseCode.strip.split('   ').map do |word|
    word.split.map { |char| MORSE_CODE[char] }.join
  end
  sentence.join(' ')
end
