class NumberWord 
  def initialize(num)
    @num = num
    @name_array = []

    @ones = {
      0 => "",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine"
    }

    @tens_below_20 = {
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen"
    }

    @tens_above_20 = {
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety"
    }

    @hundred = {
      100 => "hundred"
    }

    @thousand = {
      1000 => "onethousand"
    }

    if @ones.member? num 
      @name_array << @ones[num]
    elsif num > 9 && num < 100
      @name_array << get_tens(num)
    elsif num >= 100 && num < 1000 
      @name_array << get_hundreds(num)
    else
      @name_array << @thousand[num]
    end

  end
    
  def get_tens(num)
    if @ones.member? num 
      return @ones[num]
    elsif @tens_below_20.member? num 
      return @tens_below_20[num]
    elsif num % 10 == 0 
      return @tens_above_20[num]
    else 
      tens = @tens_above_20[(num/10)*10]
      ones_int = num % 10
      if ones_int
        ones_word = @ones[ones_int] 
      else
        ones_word = ""
      end
      return tens + ones_word
    end
  end

  def get_hundreds(num)
    hundreds = num/100
    tens_int = num%100
    if tens_int > 0
      tens_words = "and"+get_tens(tens_int)
    else
      tens_words = ""
    end
    return @ones[hundreds] + "hundred" + tens_words
  end

  def to_i 
    @num
  end

  def to_a
    @name_array
  end

  def to_s
    @name_array.join
  end

  def length
    self.to_s.length
  end
end

def solve
  sum = 0
  (1..1000).each do |num|
    num_word = NumberWord.new(num)
    puts num_word
    sum += num_word.length
  end
  puts sum
end
solve