require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/offset'
require './lib/key'

#takes in key,date,message

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new("hello world!", "02715", "040895")
  end


  def test_it_can_get_encryption
    assert_equal "keder ohulw", @enigma.encrypt[:encryption]
  end

  def test_it_can_get_key
    skip
    #expected is random
    assert_equal "02715", @enigma.encrypt[:key]
  end

  def test_it_can_get_date
    skip
    #todays date
    assert_equal "040895", @engima.encrypt[:date]
  end
end
