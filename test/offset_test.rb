require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require 'date'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end

  def test_it_can_retrieve_todays_date
    assert_equal 4112019, @offset.todays_date
  end

  def test_it_can_square_the_date
    date = 4112019
    assert_equal 35323902, @offset.squared(date)
  end

  def test_it_can_get_last_four
    date = 4112019
    assert_equal 3902, @offset.get_last_four(date)
  end

  def test_it_can_pair_key_to_number
    date = 4112019
    expected = {"A" => 3, "B"=> 9, "C"=> 0, "D"=> 2}
    assert_equal expected, @offset.pair_keys(date)
  end
  #takes in the date
  #multiple that by it self
  #grabs the last 4 numbers of that
end
