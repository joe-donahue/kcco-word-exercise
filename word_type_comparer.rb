require 'json'
require 'active_support/inflector'

class WordTypeComparer
  def initialize(word, type)
    file = File.read("./words/#{type.pluralize}.json")

    @data = JSON.parse(file)
    @word = word
    @type = type
  end

  def is_type?
    @data[@type.pluralize].include?(@word)
  end

  def pick_random_word_from_type
    word = @data[@type.pluralize].sample
  end
end