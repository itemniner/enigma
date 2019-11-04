require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
#generate random key that is used untill invoke the method to change
  #key is 5 digits that uses each cons to retrieve => final key" example 12345 12 23 34 45

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

  # def test_it_can_get_five_digit
  #   assert_equal 5, @key.random_five_digit
  # end
  # def test_it_can_grab_random_five_number
  #   key.stubs(:get_five_numbers).returns("59376")
  #   assert_equal "59376", @key.get_five_numbers
  # end
  #
  # def test_it_can_turn_to_key
  #     key.stubs(:generate_key).returns("")
  # end
end
