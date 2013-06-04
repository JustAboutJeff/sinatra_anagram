class Dictionary
  def self.seed!
    File.open('./db/words').each_line do |dictionary_word|
      Word.create(word: dictionary_word.strip)
    end
  end
end

Dictionary.seed!
