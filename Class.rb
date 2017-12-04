class Telefon

	attr_reader :isim
	attr_reader :os

	attr_writer :isim,:os
	attr_accessor :kapasite

	def initialize(isim, os, kapasite)
		@isim = isim
		@os = os
		@kapasite = kapasite
	end

	def mesaj_at(telefon, mesaj)
		if mesaj_kontrol(mesaj)
			puts "Mesaj atildi"
		else
			puts "Mesaj cok uzun"
		end
	end

	private
	def mesaj_kontrol(mesaj)
		mesaj.size < 10
	end

end

iphone = Telefon.new("iPhone", "iOS", 128)

//deneme bir iki

iphone.isim
puts iphone.isim
iphone.isim ="Samsung"
puts iphone.isim
iphone.mesaj_at("911", "Mesaj")
