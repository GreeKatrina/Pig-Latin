require "pig_latin/version"

module PigLatin

  def self.translate(string)
    if /\A[aeiou]/.match(string) != nil
      self.vowel(string)
    elsif /\Ay/.match(string) != nil
      self.constant(string)
    elsif /y/.match(string) != nil
      self.y_not_first(string)
    else
      self.constant(string)
    end
  end

  def self.vowel(string)
    string = string + "way"
    string
  end

  def self.constant(string)
    x = string.index(/[aeiou]/)
    first = string[0,x]
    string = string[x,string.length] + "#{first}ay"
    string
  end

  def self.y_not_first(string)
    x = string.index("y")
    if x == 0
      string = string[1,string.length] + "yay"
      string
    else
      first = string[0...x]
      string = string[x,string.length] + "#{first}ay"
      string
    end
  end

end
