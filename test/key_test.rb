require_relative 'test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_it_can_generate_random_key
    # key = stub[:generate_random_five_digit]
    assert_equal 5, @key.generate_random_key.to_s.length
  end

  def test_it_can_get_split_key
    key = "02715"
    assert_equal ["02", "27", "71", "15"], @key.separate(key)
  end

  def test_it_can_pair_key_to_number
      key = "02715"
    expected = {"A" => 02, "B"=> 27, "C"=> 71, "D"=> 15}
    assert_equal expected, @key.pair_keys(key)
  end
end
