
require './lib/enigma'
require './lib/shift'
require './lib/key'
require './lib/offset'

(message, where)= ARGV


messages = File.open(message, "r")

encrypted = File.open(where, "w")
encrypted_message = Enigma.new.encrypt(messages.read.chomp, "48070")
encrypted.write(encrypted_message[:encryption])
encrypted.close

p "Created #{where} with the key #{encrypted_message[:key]} and date #{encrypted_message[:date]}"
