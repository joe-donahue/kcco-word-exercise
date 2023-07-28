class SimilarWordsFinder
  def initialize(word)
    @word = word
    @synonyms_file = File.read("words/synonyms.json")
    @antonyms_file = File.read("words/antonyms.json")

    @synonym_data = JSON.parse(@synonyms_file)
    @antonym_data = JSON.parse(@antonyms_file)
  end

  def has_a_synonym?
    @synonym_data.key?(@word)
  end

  def has_a_antonym?
    @antonym_data.key?(@word)
  end

  def pick_random_synonym
    @synonym_data[@word].sample
  end

  def pick_random_antonym
    @antonym_data[@word].sample
  end
end