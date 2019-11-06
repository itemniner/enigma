class Enigma

  def encrypt(message, key = Key.new.generate_random_key, date = Offset.new.todays_date)
    hashes = get_hashes(key,date)
      {encryption: Shift.new.shift_characters(message, hashes[0], hashes[1]),
       key: key,
       date: date}
  end

  def decrypt(message, key, date = Offset.new.todays_date)
    hashes = get_hashes(key,date)
      {decryption: Shift.new.negative_shift_characters(message, hashes[0], hashes[1]),
       key: key,
       date: date }
  end

  def get_hashes(key, date)
    [Key.new.pair_keys(key), Offset.new.pair_keys(date.to_i)]
  end
end
