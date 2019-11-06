class Shift

  def shift_value(key, offset)
    shift = key
    offset.each do |key, value|
      shift[key] += value
    end
    shift
  end

  def current_key(array_of_values)
    key = array_of_values.first
    array_of_values.rotate!
    key
  end

  def shift_characters(message, key, offset)
    values = shift_value(key, offset).values
    alphabet = ("a".."z").to_a << " "
    message.downcase.chars.map do |letter|
      letter_index = alphabet.index(letter)
      alphabet.rotate(letter_index + current_key(values)).first
    end.join
  end

  def negative_shift_characters(message, key, offset)
    values = shift_value(key, offset).values
    alphabet = ("a".."z").to_a << " "
    message.downcase.chars.map do |letter|
      letter_index = alphabet.index(letter)
      alphabet.rotate(letter_index - current_key(values)).first
    end.join
  end
end
