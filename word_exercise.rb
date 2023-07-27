require_relative 'word_type_comparer'

class WordExercise
  def initialize(word)
    @noun_comparer = WordTypeComparer.new(word, 'noun')
  end

  def is_a_noun?
    puts @noun_comparer.is_type?
  end

  def pick_random_noun
    puts @noun_comparer.pick_random_word_from_type
  end
end