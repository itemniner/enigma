require './lib/enigma'
require './lib/shift'
require './lib/key'
require './lib/offset'

(encrypted_message, where)= ARGV

encrypted_messages = File.open(encrypted_message, "r")

decrypted = File.open(where, "w")
decrypted_message = Enigma.new.decrypt(encrypted_messages.read.chomp, "48070")
decrypted.write(decrypted_message[:decryption])
decrypted.close

p "Created #{where} with the key #{decrypted_message[:key]} and date #{decrypted_message[:date]}"
