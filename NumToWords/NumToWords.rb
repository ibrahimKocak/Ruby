/puts "Bir sayi giriniz: " ; x = gets.to_i/

def yaziyla(x)

yaz = "" ; basamak = 1
ary1 = ["","","Iki ","Uc ","Dort ","Bes ","Alti ","Yedi ","Sekiz ","Dokuz "]
ary2 = ["","On ","Yirmi ","Otuz ","Kirk ","Elli ","Altmis ","Yetmis ","Seksen ","Doksan "]
ary0 = ["","Bin ","Milyon ","Milyar ","Trilyon ","Katrilyon ","Kentilyon ","Seksilyon ","Septilyon ","Oktilyon ","Nonilyon ","Desilyon ","Undesilyon ","Dodesilyon ","Tredesilyon ","Kattuordesilyon ","Kendesilyon ",
"Sexdesilyon ","Septendesilyon ","Oktodesilyon ","Novemdesilyon ","Vigitilyon ","Unvigintilyon ","Dovigintilyon ","Trevigintilyon ","Kattuorvigintilyon ","Kenvigintilyon ","Sexvigintilyon ","Septenvigintilyon ",
"Oktovigintilyon ","Novemvigintilyon ","Trigintilyon ","Untrigintilyon ","Dotrigintilyon ","Tretrigintilyon ","Kattuortrigintilyon ","Kentrigintilyon ","Sextrigintilyon ","Septentrigintilyon ","Oktotrigintilyon ",
"Novemtrigintilyon ","Katragintilyon ","Unkatragintilyon ","Dokatragintilyon ","Trekatragintilyon ","Kattuorkatragintilyon ","Kenkatragintilyon ","Sexkatragintilyon ","Septenkatragintilyon ","Oktokatragintilyon ",
"Novemkatragintilyon ","Kenquagintilyon ","Unkenquangintilyon ","Trekenquagintilyon ","Kattuorkenquagintilyon ","Kenkenquagintilyon ","Sexkenquagintilyon ","Septenkenquagintilyon ","Oktokenquagintilyon ",
"Novemkenquagintilyon ","Sexagintilyon ","Unsexsagintilyon ","Tresexagintilyon ","Kattuorsexagintilyon ","Kensexagintilyon ","Sexsexagintilyon ","Septensexagintilyon ","Oktosexagintilyon ","Novemsexagintilyon ",
"Septuagintilyon ","Unseptuagintilyon ","Doseptuagintilyon ","Treseptuagintilyon ","Kattuorseptuagintilyon ","Kenseptuagintilyon ","Sexseptuagintilyon ","Septenseptuagintilyon ","Oktoseptuagintilyon ",
"Novemseptuagintilyon ","Oktogintilyon ","Unoktogintilyon ","Dooktogintilyon ","Treoktogintilyon ","Kattuoroktogintilyon ","Kenoktogintilyon ","Sexoktogintilyon ","Septenoktogintilyon ","Oktooktogintilyon ",
"Novemoktogintilyon ","Nonagintilyon ","Unnonagintilyon ","Dononagintilyon ","Trenonagintilyon ","Kattuornonagintilyon ","Kennonagintilyon ","Sexnonagintilyon ","Septennonagintilyon ","Oktononagintilyon ",
"Novemnonagintilyon ","Sentilyon ","Senuntilyon ","Sendotilyon ","Sentretilyon ","Senkattuortilyon ","Senkentilyon ","Sensextilyon ","Senseptentilyon ","Senoktotilyon ","Sennovemtilyon ","Sendesilyon ",
"Senundesilyon ","Sendodesilyon ","Sentredesilyon ","Senkattuordesilyon ","Senkendesilyon ","Sensexdesilyon ","Senseptendesilyon ","Senoktodesilyon ","Sennovemdesilyon ","Senvigiltinyon ","Senunvigintilyon ",
"Sendovigintilyon ","Sentrevigintilyon ","Senkattuorvigintilyon ","Senkenvigintilyon ","Sensexvigintilyon ","Senseptenvigintilton ","Senoktovigintilyon ","Sennovemvigintilyon ","Sentrigintilyon ",
"Senuntrigintilyon ","Sendotrigintilyon ","Sentretrigintilyon ","Senkattuorgintilyon ","Senkentrigintilyon ","Sensextrigintilyon ","Senseptentrigintilyon ","Senoktotrigintilyon ","Sennovemtrigintilyon ",
"Senkatragintilyon ","Senunkatragintilyon ","Sendokatragintilyon ","Sentrekatragintilyon ","Senkattuorkatragintilyon ","Senkenkatragintilyon ","Sensexkatragintilyon ","Senseptenkatragintilyon ",
"Senoktokatragintilyon ","Sennovemkatragintilyon "]

if Math.log10(x) > 152
    puts "Sayi bu islem icin cok buyuk"
else
	if x==0 ; yaz ="sifir"
	else
    if x.negative? ; eksi = true ; x = x.abs ; end
    while x > 0

        if basamak%3 == 0 && x%10 != 0 ; yaz = "Yuz "+yaz
        elsif basamak%3 == 1 && x%1000 != 0 ; yaz = ary0[(basamak-1)/3]+yaz
        end
        
        if basamak%3 != 2
        
            if x%10 == 1 && basamak%3 == 1 && (basamak != 4 || x%1000 != 1)
            	yaz = "Bir "+yaz
            elsif
            	yaz = ary1[x%10]+yaz
        	end
        	else
	        	yaz = ary2[x%10]+yaz
    	end
        basamak += 1
        x = x/10
    end
	end
    if eksi ; yaz = "Eksi "+yaz ; end
end
yaz
end