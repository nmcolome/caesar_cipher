class CaesarCipher
  def abc
    ("A".."Z").to_a
  end

  def encode(text, shift)
    new_abc = abc.rotate(-shift)
    msg = text.upcase.split("")

    encoded_msg = msg.map do |letter|
      if abc.rindex(letter).nil?
        letter
      else
        index = abc.rindex(letter)
        new_abc[index]
      end
    end

    encoded_msg.join("")
  end
end