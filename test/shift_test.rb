require_relative 'test_helper'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new
  end

  def test_it_can_add_key_and_date
    key = {"A" => 02, "B"=> 27, "C"=> 71, "D"=> 15}
    offset = {"A" => 2, "B"=> 1, "C"=> 6, "D"=> 1}
    expected = {"A" => 04, "B"=> 28, "C"=> 77, "D"=> 16}
    assert_equal expected, @shift.shift_value(key, offset)
  end
end
