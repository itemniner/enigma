require 'minitest/autorun'
require 'minitest/pride'
require './lib/engima'
require './lib/offset'
require './lib/key'

#takes in key,date,message

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new("hello world!", "02715", "040895")
  end


  def test_it_can_get_encryption
    @enigma.encrypt
    assert_equal "keder ohulw", @engima.encryption

  end

  def test_it_can_get_key
    #expected is random
    assert_equal "02715", @enigma.key
  end

  def test_it_can_get_date
    #todays date
    assert_equal "040895", @engima.date
  end
end
