require_relative 'test_helper'


class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end

  def test_it_can_retrieve_todays_date
    assert_equal 51119, @offset.todays_date
  end

  def test_it_can_square_the_date
    date = 41119
    assert_equal 1690772161, @offset.square_date(date)
  end

  def test_it_can_get_last_four
    date = 41119
    assert_equal 2161, @offset.get_last_four(date)
  end

  def test_it_can_pair_key_to_number
    date = 41119
    expected = {"A" => 2, "B"=> 1, "C"=> 6, "D"=> 1}
    assert_equal expected, @offset.pair_keys(date)
  end
  #takes in the date
  #multiple that by it self
  #grabs the last 4 numbers of that
end
