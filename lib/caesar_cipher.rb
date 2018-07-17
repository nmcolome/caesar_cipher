class CaesarCipher

  def abc
    ("A".."Z").to_a
  end

  def encode(text, shift)
    new_abc = abc.rotate(-shift)
    msg = text.upcase.split("")

    transformer(msg, new_abc).join("")
  end

  def transformer(msg, new_abc)
    msg.map do |letter|
      if abc.rindex(letter).nil?
        letter
      else
        index = abc.rindex(letter)
        new_abc[index]
      end
    end
  end

end