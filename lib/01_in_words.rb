class Fixnum
  def in_words
    number = self
    index_of = number.to_s.split("").reverse
    actual_word = []
    index_of.each_with_index{|x,y|
      return "zero" if self == 0
      if y == 0 && index_of[y+1].to_i == 1
        actual_word << tens(x.to_i)
      elsif y == 0
        actual_word << zero_to_9(x.to_i)
      elsif y == 1
        actual_word << after_ten(x.to_i)
      elsif y == 2
        actual_word << hundreds(x.to_i)
      elsif y == 3 && index_of[y+1].to_i == 1
        actual_word << tens_thousands(x.to_i)
      elsif y == 3
        actual_word << thousands(x.to_i)
      elsif y == 4
        actual_word << after_ten(x.to_i)
      elsif y == 5
        actual_word << hundreds(x.to_i)
      elsif y == 6 && index_of[y+1].to_i == 1
        actual_word << tens_millions(x.to_i)
      elsif y == 6
        actual_word << millions(x.to_i)
      elsif y == 7
        actual_word << after_ten(x.to_i)
      elsif y == 8
        actual_word << hundreds(x.to_i)
      elsif y == 9 && index_of[y+1].to_i == 1
        actual_word << tens_billions(x.to_i)
      elsif y == 9
        actual_word << billions(x.to_i)
      elsif y == 10
        actual_word << after_ten(x.to_i)
      elsif y == 11
        actual_word << hundreds(x.to_i)
      elsif y == 12
        actual_word << trillions(x.to_i)
      end
    }
    actual_word = actual_word.reverse.compact.join(" ").strip
    delete_array = ["trillion", "billion", "million", "thousand"]
    delete_unnecessary = actual_word.split(" ")
    delete_unnecessary.each_with_index{|x,y|
      if delete_array.include?(x) || x == "!"
        counter = y + 1
        while delete_array.include?(delete_unnecessary[counter])
          delete_unnecessary[counter] = "!"
        end
      end
    }
    delete_unnecessary.delete("!")
    delete_unnecessary.join(" ")
  end

  def zero_to_9(num)
    case num
        when 0
        when 1
          "one"
        when 2
          "two"
        when 3
          "three"
        when 4
          "four"
        when 5
          "five"
        when 6
          "six"
        when 7
          "seven"
        when 8
          "eight"
        when 9
          "nine"
      end
  end

  def tens(num)
    case num
        when 0
          "ten"
        when 1
          "eleven"
        when 2
          "twelve"
        when 3
          "thirteen"
        when 4
          "fourteen"
        when 5
          "fifteen"
        when 6
          "sixteen"
        when 7
          "seventeen"
        when 8
          "eighteen"
        when 9
          "nineteen"
      end
  end

  def after_ten(num)
    case num
        when 0
        when 1
        when 2
          "twenty"
        when 3
          "thirty"
        when 4
          "forty"
        when 5
          "fifty"
        when 6
          "sixty"
        when 7
          "seventy"
        when 8
          "eighty"
        when 9
          "ninety"
      end
  end

  def hundreds(num)
    case num
        when 0
        when 1
          "one hundred"
        when 2
          "two hundred"
        when 3
          "three hundred"
        when 4
          "four hundred"
        when 5
          "five hundred"
        when 6
          "six hundred"
        when 7
          "seven hundred"
        when 8
          "eight hundred"
        when 9
          "nine hundred"
      end
  end

  def thousands(num)
    case num
        when 0
          "thousand"
        when 1
          "one thousand"
        when 2
          "two thousand"
        when 3
          "three thousand"
        when 4
          "four thousand"
        when 5
          "five thousand"
        when 6
          "six thousand"
        when 7
          "seven thousand"
        when 8
          "eight thousand"
        when 9
          "nine thousand"
      end
  end

  def tens_thousands(num)
    case num
        when 0
          "ten thousand"
        when 1
          "eleven thousand"
        when 2
          "twelve thousand"
        when 3
          "thirteen thousand"
        when 4
          "fourteen thousand"
        when 5
          "fifteen thousand"
        when 6
          "sixteen thousand"
        when 7
          "seventeen thousand"
        when 8
          "eighteen thousand"
        when 9
          "nineteen thousand"
      end
  end

  def millions(num)
    case num
        when 0
          "million"
        when 1
          "one million"
        when 2
          "two million"
        when 3
          "three million"
        when 4
          "four million"
        when 5
          "five million"
        when 6
          "six million"
        when 7
          "seven million"
        when 8
          "eight million"
        when 9
          "nine million"
      end
  end

  def tens_millions(num)
    case num
        when 0
          "ten million"
        when 1
          "eleven million"
        when 2
          "twelve million"
        when 3
          "thirteen million"
        when 4
          "fourteen million"
        when 5
          "fifteen million"
        when 6
          "sixteen million"
        when 7
          "seventeen million"
        when 8
          "eighteen million"
        when 9
          "nineteen million"
      end
  end

  def billions(num)
    case num
        when 0
          "billion"
        when 1
          "one billion"
        when 2
          "two billion"
        when 3
          "three billion"
        when 4
          "four billion"
        when 5
          "five billion"
        when 6
          "six billion"
        when 7
          "seven billion"
        when 8
          "eight billion"
        when 9
          "nine billion"
      end
  end

  def tens_billions(num)
    case num
        when 0
          "ten billion"
        when 1
          "eleven billion"
        when 2
          "twelve billion"
        when 3
          "thirteen billion"
        when 4
          "fourteen billion"
        when 5
          "fifteen billion"
        when 6
          "sixteen billion"
        when 7
          "seventeen billion"
        when 8
          "eighteen billion"
        when 9
          "nineteen billion"
      end
  end

  def trillions(num)
    case num
        when 0
          "trillion"
        when 1
          "one trillion"
        when 2
          "two trillion"
        when 3
          "three trillion"
        when 4
          "four trillion"
        when 5
          "five trillion"
        when 6
          "six trillion"
        when 7
          "seven trillion"
        when 8
          "eight trillion"
        when 9
          "nine trillion"
      end
  end
end 
