require "pig_latin/version"

module PigLatin

  def self.translate(string)
    if /^y/.match(string)
      self.constant(string)
    elsif /\A[^aeiou]/.match(string)
      self.constant(string)
    elsif /\A[aeiou]/.match(string)
      self.vowel(string)
    else
      if /\Ay/.match(string)
        self.constant(string)
      else
        self.y_not_first(string)
      end
    end
  end

  def self.vowel(string)
  end

  def self.constant(string)
  end

  def self.y_not_first(string)
  end

end
