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
    puts @similar_words_finder.has_a_antonym?
    puts @similar_words_finder.pick_random_antonym
  end

  def display_sentence

  end
end

exercise = WordExercise.new('I ran with JD who is tall')
exercise.generate_next_word