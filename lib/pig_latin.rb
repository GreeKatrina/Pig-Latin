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
    string = string + "way"
  end

  def self.constant(string)
    x = string.index(/[aeiou]/)
    first = string[0,x]
    string = string[x,string.length] + "#{first}ay"
  end

  def self.y_not_first(string)
  end

end
