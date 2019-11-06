class Offset

  def todays_date
    Time.now.strftime("%d%m%y").to_i
  end

  def square_date(date)
    date * date
  end

  def get_last_four(date)
    square_date(date).to_s.chars.reverse[0..3].reverse.join.to_i
  end

  def pair_keys(date)
    shift_amount = {}
    value = get_last_four(date).to_s.chars
    letters = ("A".."D").to_a
    letters.each_with_index do |letter, index|
      shift_amount[letter] = value[index].to_i
    end
    shift_amount
  end
end
