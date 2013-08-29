def translate(str)   
	votes = %w(a o y e i u)
	one_tone = %w(qu sch)
	str.split.each do |word|
		i = 0
		while i < word.length
			if tone = one_tone.detect{ |t| word.start_with? t }
				word << word.slice!(/^#{tone}/)
				i += tone.length										  
		elsif votes.include? word[0]
				break
			else
				word << word.slice!(0)
				i += 1
      end
    end
    word << "ay"
  end.join(" ")
end

