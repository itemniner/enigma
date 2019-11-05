require_relative 'test_helper'

#takes in key,date,message

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exist
    skip
    assert_instance Engima, @enigma.encrypt("hello world", "02715", "040895")
  end


  def test_it_can_get_encryption
    skip
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
