def justify(text, width)
  output_text = []
  sentence = []
  text.split.each do |word|
    if get_length(sentence + [word]) <= width
      sentence.append(word)
    else
      output_text.append(sentence)
      sentence = [word]
    end
    word.size
  end
  output_text.append(sentence)
  output_text[0..-2].map { |sentence| justify_join(sentence, width) }.join("\n") + "\n" + output_text.last.join(' ')
end

def get_length(sentence)
  sentence.size - 1 + sentence.map(&:size).sum
end

def justify_join(sentence, width)
  word_count = sentence.size
  character_count = sentence.map(&:size).sum # spaces not included
  space_to_fill = width - character_count
  output_string = ''
  sentence.each do |word|
    output_string += word
    break if word.equal?(sentence.last)
    average_spaces = (space_to_fill / (word_count - 1).to_f)
    spaces = average_spaces.ceil
    output_string += (' ' * spaces) || ''
    space_to_fill -= spaces
    word_count -= 1
  end
  # debug
  output_string
end
