class Integer
  def in_words
    return "zero" if self == 0 
    power = ["", "thousand ", "million ", "billion ", "trillion "]
    tens = %w(nil nil twenty thirty forty fifty sixty seventy eighty ninety)   
    teens = %w(ten eleven twelve thirteen fourteen fifteen
                sixteen seventeen eighteen nineteen) 
    digits = %w(zero one two three four five six seven eight nine)
    words = ''
    num = self
    text = []
    i = 0
    while num > 0
      words << "#{digits[num % 1000 / 100]} hundred " unless num % 1000 / 100 == 0
      if (10..19).include? (num % 100)
        words << "#{teens[num % 10]} "
      else
        words << "#{tens[num % 100 / 10 ]} " unless num % 100 / 10 == 0
        words << "#{digits[num % 10]} " unless num % 10 == 0
      end     
      words << power[i] unless num % 1000 == 0
      text.push(words.clone)
      num /= 1000
      words.clear
      i += 1
    end
    text.reverse!.join.strip
  end
end