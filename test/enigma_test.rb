require_relative 'test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exist
    skip
    assert_instance Engima, @enigma
  end


  def test_it_can_get_encryption
    skip
    assert_equal "keder ohulw", @enigma.encrypt[:encryption]
  end

  def test_it_can_get_key
    skip
    assert_equal "02715", @enigma.encrypt[:key]
  end

  def test_it_can_get_date
    skip
    assert_equal "040895", @engima.encrypt[:date]
  end
end
