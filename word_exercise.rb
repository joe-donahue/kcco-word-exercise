require_relative 'word_type_comparer'
require_relative 'word_generator'
require_relative 'similar_words_finder'

class WordExercise
  def initialize(sentence)
    @sentence = sentence
    word = @sentence.split(' ').last

    @type_comparer = WordTypeComparer.new(word, 'empty')
    @word_generator = WordGenerator.new
    @similar_words_finder = SimilarWordsFinder.new(word)
  end

  def generate_next_word
    # Implement logic to generate the next word in the sentence and return it.

    'I am returning this because I have not been implemented yet and no one loves me.'
  end

  def add_next_word_to_sentence(next_word)
    @sentence = "#{@sentence} #{next_word}"
  end

  def display_sentence
    puts @sentence
  end
end

exercise = WordExercise.new('--- current sentence goes here ---')
next_word = exercise.generate_next_word

puts "The next word is: #{next_word}"

exercise.add_next_word_to_sentence(next_word)
exercise.display_sentence