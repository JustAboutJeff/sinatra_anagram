class Word < ActiveRecord::Base
  before_save :get_normalized

  def self.get_anagrams(word)
    Word.find_all_by_normalized(word.downcase.split('').sort.join(''))
  end

  def get_normalized
    self.normalized = self.word.downcase.split('').sort.join('')
  end

end
