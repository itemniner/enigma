class Shift
  def shift_value(key, offset)
    shift = key
    offset.each do |key, value|
      shift[key] += value
    end
    shift
  end
end
