class String
  define_method(:count) do |word_to_count|
    counter = 0
    split = self.split()
    extra = word_to_count
    split.each() do |word|
      word_to_count = word.gsub(/[!,@,?,"",:,;,.]/, "")
      if word.include? extra
        counter+=1
      end
    end
    counter
  end
end
