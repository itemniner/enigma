require_relative 'test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exist
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_encrypt
    expected =  {
                  encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
                  }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_decrypt
    expected =  {
                  decryption: "hello world",
                  key: "02715",
                  date: "040895"
                  }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_can_encrypt_with_todays_date
    expected =  {
                  encryption: "lfhasasdvm ",
                  key: "02715",
                  date: Time.now.strftime("%d%m%y")
                  }
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_it_can_decrypt_with_todays_date
    encrypted = @enigma.encrypt("hello world", "02715")
    expected =  {
                  decryption: "hello world",
                  key: "02715",
                  date: Time.now.strftime("%d%m%y")
                  }
    assert_equal expected, @enigma.decrypt(encrypted[:encryption], "02715")
  end

  def test_it_can_encrypt_with_only_message
    expected =  {
                  encryption: "hello world",
                  key: "12345",
                  date: Time.now.strftime("%d%m%y")
                  }.length
    assert_equal expected, @enigma.encrypt("hello world").length
  end
end
