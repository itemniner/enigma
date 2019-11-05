class Key
  def generate_random_key
    rand.to_s[2..6]
  end

  def separate(key)
    key.to_s.chars.each_cons(2).map do |var|
      var.join
    end
  end

  def pair_keys(key)
    shift_value = {}
    letters = separate(key)
    char = ("A".."D").to_a
    char.each_with_index do |letter, index|
      shift_value[letter] = letters[index].to_i
    end
    shift_value
  end
end
