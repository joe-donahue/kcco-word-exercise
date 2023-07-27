require 'json'
require 'active_support/inflector'

class WordTypeComparer
  def initialize(word, type)
    @word = word
  end

  def is_type?(type)
    file = File.read("./words/#{type.pluralize}.json")

    data = JSON.parse(file)
    data[type.pluralize].include?(@word)
  end

  def is_a_noun?
    is_type?('noun')
  end

  def is_a_adjective?
    is_type?('adjective')
  end

  def is_a_adverb?
    is_type?('adverb')
  end

  def is_a_interjection?
    is_type?('interjection')
  end

  def is_a_verb?
    is_type?('verb')
  end
end