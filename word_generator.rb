require 'json'
require 'active_support/inflector'

class WordGenerator
  def get_type_words(type)
    file = File.read("./words/#{type.pluralize}.json")

    data = JSON.parse(file)
  end

  def pick_random_word_from_type(type)
    data = get_type_words(type)

    word = data[type.pluralize].sample
  end

  def pick_random_noun
    pick_random_word_from_type('noun')
  end

  def pick_random_adjective
    pick_random_word_from_type('adjective')
  end

  def pick_random_adverb
    pick_random_word_from_type('adverb')
  end

  def pick_random_interjection
    pick_random_word_from_type('interjection')
  end

  def pick_random_verb
    pick_random_word_from_type('verb')
  end

  def pick_random_definitive_article
    pick_random_word_from_type('definitive_article')
  end

  def pick_random_conjunction
    pick_random_word_from_type('conjunction')
  end
end