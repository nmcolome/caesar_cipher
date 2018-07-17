require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/caesar_cipher.rb'

class CaesarCipherTest < Minitest::Test
  def setup
    @cipher = CaesarCipher.new
  end

  def test_it_generates_alphabet
    alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

    assert_equal alphabet, @cipher.abc
  end

  def test_it_encodes_message
    assert_equal "CZGGJ RJMGY", @cipher.encode("Hello World", 5)
  end
end