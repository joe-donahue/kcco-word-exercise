class SimilarWordsFinder
  def initialize(word)
    @word = word
    @synonyms_file = File.read("words/synonyms.json")
  end

  def has_a_synonym?
    @data = JSON.parse(@synonyms_file)

    @data.key?(@word)
  end
end