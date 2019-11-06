require_relative 'test_helper'

class KeyTest < Minitest::Test
  
  def setup
    @key = Key.new
  end

  def test_it_can_generate_random_key
    assert_equal 5, @key.generate_random_key.to_s.length
  end

  def test_it_can_get_split_key
    assert_equal ["02", "27", "71", "15"], @key.separate("02715")
  end

  def test_it_can_pair_key_to_number
    expected = {"A" => 02, "B"=> 27, "C"=> 71, "D"=> 15}
    assert_equal expected, @key.pair_keys("02715")
  end
end
