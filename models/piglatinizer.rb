class PigLatinizer

  def piglatinize(phrase)
    words = phrase.split(" ")
    piglatin_words = words.map do |word|
      first = word[0].downcase
      if ["a", "e", "i", "o", "u"].include?(first)
        word + "way"
      elsif word.size > 1
        second = word[1].downcase
        if ["a", "e", "i", "o", "u"].include?(second) == false
          if word.size > 2
            third = word[2].downcase
            if ["a", "e", "i", "o", "u"].include?(third) == false
              word[3..-1] + word[0..2] + "ay"
            else
              word[2..-1] + word[0..1] + "ay"
            end
          else
            word[2..-1] + word[0..1] + "ay"
          end
        else
          word[1..-1] + word[0] + "ay"
        end
      else
        word[0..-1] + "ay"
      end
    end
    piglatin_words.join(" ")
  end

end
