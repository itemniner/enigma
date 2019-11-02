require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'
#generate random key that is used untill invoke the method to change
  #key is 5 digits that uses each cons to retrieve => final key" example 12345 12 23 34 45

class Key < Minitest::Test
  # def test_it_can_grab_random_five_number
  #   key.stubs(:get_five_numbers).returns("59376")
  #   assert_equal "59376", @key.get_five_numbers
  # end
  #
  # def test_it_can_turn_to_key
  #     key.stubs(:generate_key).returns("")
  # end
end
