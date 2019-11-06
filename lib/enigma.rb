class Enigma

  def encrypt(message, key, date)
    hashes = get_hashes(key,date)
    {encryption: Shift.new.shift_characters(message, hashes[0], hashes[1]),
       key: key,
      date: date }
  end

  def get_hashes(key, date)
    [Key.new.pair_keys(key), Offset.new.pair_keys(date.to_i)]
  end
end
