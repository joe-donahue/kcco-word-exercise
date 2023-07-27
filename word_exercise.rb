require_relative 'word_type_comparer'

class WordExercise
  def initialize(sentence)
    @sentence = sentence
    word = @sentence.split(' ').last

    @noun_comparer = WordTypeComparer.new(word, 'noun')
    @adjective_comparer = WordTypeComparer.new(word, 'adjective')
  end

  def generate_next_word

  end

  def display_sentence

  end

  def is_a_noun?
    @noun_comparer.is_type?
  end

  def is_a_adjective?
    @adjective_comparer.is_type?
  end

  def pick_random_noun
    @noun_comparer.pick_random_word_from_type
  end

  def pick_random_adjective
    @adjective_comparer.pick_random_word_from_type
  end
end