require_relative 'word_type_comparer'
require_relative 'word_generator'

class WordExercise
  def initialize(sentence)
    @sentence = sentence
    word = @sentence.split(' ').last

    @type_comparer = WordTypeComparer.new(word, 'empty')
    @word_generator = WordGenerator.new
  end

  def generate_next_word
    puts @type_comparer.is_a_name?
    puts @word_generator.pick_random_verb
  end

  def display_sentence

  end
end

exercise = WordExercise.new('I ran with JD')
exercise.generate_next_word