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
    puts @type_comparer.is_a_conjunction?
    puts @word_generator.pick_random_conjunction
  end

  def display_sentence

  end
end

exercise = WordExercise.new('I ran with JD who is a person but')
exercise.generate_next_word