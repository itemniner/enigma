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
    red = {}
    blue = separate(key)
    var = ("A".."D").to_a
    var.each_with_index do |letter, index|
      red[letter] = blue[index].to_i
    end
    red
  end

end
