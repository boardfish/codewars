class Dictionary
  def initialize(words)
    @words = words
  end

  def find_most_similar(term)
    # Not golfing this one.
    size_diff = Hash[@words.map { |word| [word, (term.size - word.size).abs] }]
    lett_diff = Hash[@words.map do |word|
      [word, (word.chars - term.chars).size]
    end]
    sum_diff = Hash[@words.map do |word|
                      [word, (size_diff[word] + lett_diff[word])]
                    end ]
    puts "size_diff: #{size_diff}"
    puts "lett_diff: #{lett_diff}"
    puts "sum_diff: #{sum_diff}"
    sum_diff.min_by { |_word, score| score }[0]
  end
end

words = %w[cherry peach pineapple melon strawberry raspberry apple coconut banana]
test_dict = Dictionary.new(words)
puts test_dict.find_most_similar('strawbery')
puts test_dict.find_most_similar('berry')
puts test_dict.find_most_similar('aple')