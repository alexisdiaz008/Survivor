module EscapeTheRoomModule

  def question_loop(top, bottom, setup, options,answer1,answer2,answer3,answer4)
      valid_action = ["#{answer1}","#{answer2}","#{answer3}","#{answer4}"]
      action = ask_question("#{top}","#{bottom}","#{setup}

      ", "#{options}")
    until valid_action.include?(action)
      say nil, ["Are you sure about this...?", "I dunno about that...", "That's not going to work..", "Really?", "Let's try something that makes sense."].sample
      action = ask_question("#{top}","#{bottom}","#{setup}", "#{options}")
    end
    return action
  end

  def question_w_pattern(top,bottom,setup, options)
    puts("#{top}"*40)
    puts "", setup,"", "#{options}"
    puts ("")
    puts("#{bottom}"*40)
    gets.chomp.downcase
  end

  def pattern(top,bottom)
    puts("#{top}"*40)
      yield
    puts("#{bottom}"*40)
  end

  def press_enter(options)
    puts "", "#{options}"
    gets.chomp.downcase
  end

  def ask_question(top, bottom, setup, options)
    puts("#{top}"*40)
    puts "#{setup}", "#{options}"
    puts("#{bottom}"*40)
    gets.chomp.downcase
  end

  def say(person, phrase)
		unless person.nil?
			person = "#{person.capitalize}:"
		end
		puts "", "#{person} #{phrase}"
	end


  def title_screen
    puts "   ▄████████    ▄████████  ▄████████    ▄████████    ▄███████▄    ▄████████
  ███    ███   ███    ███ ███    ███   ███    ███   ███    ███   ███    ███
  ███    █▀    ███    █▀  ███    █▀    ███    ███   ███    ███   ███    █▀
 ▄███▄▄▄       ███        ███          ███    ███   ███    ███  ▄███▄▄▄
▀▀███▀▀▀     ▀███████████ ███        ▀███████████ ▀█████████▀  ▀▀███▀▀▀
  ███    █▄           ███ ███    █▄    ███    ███   ███          ███    █▄
  ███    ███    ▄█    ███ ███    ███   ███    ███   ███          ███    ███
  ██████████  ▄████████▀  ████████▀    ███    █▀   ▄████▀        ██████████
                                                                            "
    puts "
                  ███       ▄█    █▄       ▄████████
              ▀█████████▄  ███    ███     ███    ███
                ▀███▀▀██   ███    ███     ███    █▀
                 ███   ▀  ▄███▄▄▄▄███▄▄  ▄███▄▄▄
                 ███     ▀▀███▀▀▀▀███▀  ▀▀███▀▀▀
                 ███       ███    ███     ███    █▄
                 ███       ███    ███     ███    ███
                ▄████▀     ███    █▀      ██████████
                                       "
    puts"
          ▄▄▄▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄▄▄▄▄ ▄▄       ▄▄
         ▐░░░░░░░░░░░▐░░░░░░░░░░░▐░░░░░░░░░░░▐░░▌     ▐░░▌
         ▐░█▀▀▀▀▀▀▀█░▐░█▀▀▀▀▀▀▀█░▐░█▀▀▀▀▀▀▀█░▐░▌░▌   ▐░▐░▌
         ▐░▌       ▐░▐░▌       ▐░▐░▌       ▐░▐░▌▐░▌ ▐░▌▐░▌
         ▐░█▄▄▄▄▄▄▄█░▐░▌       ▐░▐░▌       ▐░▐░▌ ▐░▐░▌ ▐░▌
         ▐░░░░░░░░░░░▐░▌       ▐░▐░▌       ▐░▐░▌  ▐░▌  ▐░▌
         ▐░█▀▀▀▀█░█▀▀▐░▌       ▐░▐░▌       ▐░▐░▌   ▀   ▐░▌
         ▐░▌     ▐░▌ ▐░▌       ▐░▐░▌       ▐░▐░▌       ▐░▌
         ▐░▌      ▐░▌▐░█▄▄▄▄▄▄▄█░▐░█▄▄▄▄▄▄▄█░▐░▌       ▐░▌
         ▐░▌       ▐░▐░░░░░░░░░░░▐░░░░░░░░░░░▐░▌       ▐░▌
          ▀         ▀ ▀▀▀▀▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀▀ ▀         ▀ "
  end

end
def danny_devito
  puts "
+++++++++++++++++++++++++++?????????????
+++++++++++++++++++++++?+++?????????????
++++++++++++$7777II7$$+??$7?????????????
++++++++?7$$777II??I?I7Z$ZOI????????????
+++++?ZOZ$7III???++???II$Z8OI???????????
++++OON877II??====++++??I$ZDZI??????????
+++7NM8877I?++++=+++++?I?77OMN$I?+??????
++INNMD8ZII++?+====+++??I77$DNMI????????
+?OMNND8II?MD$8O8$+MD7MMODNDNNM?????????
++$NMMDMMMMM+=+=+???MMM+?II7OZMI????????
+??MNDMMMDMNII$IIZ+?N+MI=$$77$MOI???????
++II$8N8II??D=III++=I?7Z?7?I7$NOI???????
++IO7+D8OI?++N???M7?I??IODI7MZN7???????+
++NM$=?7II+?+=~++=+=?++II???I7Z8I???????
+++MN7$7??++?+I++?++=7Z777II77ZDI???????
+++OM7I7?+?++++++++==II777????$ZI???????
++7ODN87I?+=++?+$==~,~=Z77I=??77????????
++?7DNNZI$?+++?=+7I????I$I?=+?O7????????
+++?NDNZ$77I++++++7$+I7$ZI?I?$DN??????+?
NM8NNDMOZ$$$I??+++===+?II7?+7OOMMMNDD7++
MNNNMNNZZ$7$7?+?++++=+?I7I$?8NNNNMNDNNNM
DMNDNNN87$Z7$7I+?+??~?+?I$?N$DNNMNDN8M8M
NNNNDMDDZ7$$77ZI?7I???=??+Z8NNNNMDDNDDND
NMDONMDNNI?I77$$$I??7D8?IMZ?NNMDMMMDDMMD
MNNNNDONDN+?III$I7$O$ZD7O??M8DD8NMNDNDMO
NNNNNNNNNND++++?+++?????+?NNNDNDDDMDNNMN
8N8N8NNNDNND+++++++++?++$8N8888NNDNNDN8D
DONNNDNDMN8ND??????????NN8DNMNN8NDN8DNDD
8ZDN8DDNDDNDN$++III???+ON88N8N88N8NDNDDD
N88DDN8NDNDOND===++==+ONMDNO8NNN8NDNNNDN
ONNNDNDNDNDM$ZO~~~~~~OOMOND8ND8NNNDNNN8N"
end

def skyline
  puts "
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++??????????????????????????????????????????????????????????
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++??????????????????????????????????????????????????????????
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++?????????????????????????????????????????????????????????
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++??++??????????????????????????????????????????????????????
++++++++++++++++++++++++++++++++++++++++++++++++++++++++????????++??????????????????????????????????????????????????????
++++++++++++++++++++++++++++++++++++++++++++++++++++++?+??????????+?????????????????????????????????????????????????????
++++++++++++++++++++++++++++++++++++++++++++++++++++????????????????????????????????????????????????????????????????????
++++++++++++++++++++++++++++++++++++++++++++++++++++????????????????????????????????????????????????????????????????????
++++++++++++++++++++++++++++++++++++++++++++++++++++++++????????????????????????????????????????????????????????????????
+++++I+++?~~=++++++++++++++++++++++++++++++++++?++++++??????????????????????????????????????????????????????????????????
++++OO+~~~:,:::,++++++++++++++++++++++++++++++++++++++??????????????????????????????????????????????????????????????????
++++OO?=~~~:::::+++++++++++++++++++++++++++++++++++++++?????????????????????????????????????????????????????????????????
++++ZO?=+7$~~~~,++++++++++++++++++++++++?????$,,,~=+,???????????????????????????????????????????????????????????????????
++++ZZ$O88Z=~==:++++++++++++++++++++++++?ZO888,I:I?~,????????????????????????????????????????????????????????I??????????
++++ZO$O88$~===:++++++++++++++++??++?????ZO888,?:+=:,?????????NN7777??????????7ZOOOOO::::::??????????????????I??????????
++++OO$ZD8Z====:++++++++++??+???????+????ZO8O8,+:++:,????????$DDDNN$III???????OOOOOOO,:::::????????????I7II=I7??????????
+++?ZZ$Z88Z~~==:+++++++??++++++++++++???DO88O8,+:+?:,?????8NNNNDZ$$N7$7Z??????DDN8N88II7ZO???????????O$D+O77I$$?????????
????ZZ$Z88O=~==:++?+????+???7?????????888Z88O8,+~?I:,?D,7?O8NDDD$$$N$$DO?I7???88D8NDD$$ZO8I???????DDDDDDIII+??7$????????
???+OO$OD8Z+===:?DZ77+??????I?????????D88Z88OD,?~?I:,?NZ$8DDNDDN$$ZN$ODOII????8888N8D$$$8OI???????DNNNDDO$Z+ZZOO????????
????OO$ZD8OZ8==:DD8Z88??????I????????8D8DZ88O8,?DDNDDNDD?...DDDN8DNNZNNO777???8888888+====~???????8DDNDNO$O?ZOZO????II??
????OOZZD8ZZ87Z:III?IIIII?III????????8888Z888D$+DNNND8MNM:.,8D8N8NNN$NMO777???8888888=+I~~~???????8DDDDD7II?I777????I???
????OOOZD8O$$7Z:IIIIIIIIIOD8$IDZ$$??ID888Z888D$+DNN88D8MDN..8DNN888NZODO777??7DD88D88+7I++???N????8NNND8OOO?OO8Z??IIII??
????OOO$D8OZ$$Z:$$$OOODNN88DOO8Z77$$$IDDDOD88DZ=DNNN8ZN8O.,.ONNNZO8MNNN8777?I78ZZ,,8D+?I??IDDNOZINDDDO77IIID88DZ$77IO?7I
????OOZZD8OZZ$7+$$7$DDDODNDD88D$7$7Z$8D88OD88DZ=DNNNNNNN....OO7II7NMMNN87$I?788$Z:,DNZ$$DM8O8DOZINDDDOZZZ8ND888Z8O7IODOI
????88O$D8OO++:Z~~:~==NONNDD8DNNNZZZZ8D8DOD88DZ=8NNNNNNN..,.??I$II77NNNNDN877O+ZOO8==,,,O8DDOIDZDNDNDO888DN888OZ88~IN8DO
????DDODDD8O7O??==?=7,DONNDOO,~,,,,,,,,,,,,,,,Z~DNNNNNNN...:?I8N$Z?7NDDNNNNDOOZO8$$,:88OZZ,N:I$MD8MNDDDDD$D8NMDZDZ+$+II7
DDDDDD8ND8?O$O+7==7IO==IOD87O,ZZZZ8O$ZZZZZZZZOO~ZNNNND8ODO=+?7O:7II7$D8D8OZZZDDNZDO888MOO==ZZ?MNMMDMODOI+~=8Z$88$?.==~M=
DDDD8NO8DDIOZII78DDODZ+?OID=Z:Z++OOZ++?+++?++OOZZI=====+D?=??+=$OZO$MNMMODDDD?+++MMMMN8DDDD++++OZZZI8O?IODMD8Z88++.++ZND
ZDZ888OD:::::::88OZ8OO8ON8OO8OOZ7+O$DOO78$IO8OI:~O=++++7Z?+O7O$ZZZZZZZZZZZZZZZZZZZZZZZZZZZZ,,,,,,,,,,,,,,,,,,,,=88.O78ZZ
$ZZOD$ZM:MZZZ::Z=7DOZ$Z7+III+?+====~~~:~:~~:::~~:~:~::::::,,:,IOOOOOOOOOOOOO8DOOOZZZZZZZZZZ:,,,,,,,,,,,,,,,,,,,+++====~~"
end

def congratulations
  puts "                          ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄
                         ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌
                         ▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌       ▐░▌
                         ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌
                         ▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌▐░▌       ▐░▌
                         ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌       ▐░▌
                          ▀▀▀▀█░█▀▀▀▀ ▐░▌       ▐░▌▐░▌       ▐░▌
                              ▐░▌     ▐░▌       ▐░▌▐░▌       ▐░▌
                              ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌
                              ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
                               ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀

 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌
▐░▌          ▐░▌          ▐░▌          ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌
▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌          ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌
▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀█░▌▐░▌          ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌       ▐░▌
▐░▌                    ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌          ▐░▌       ▐░▌
▐░█▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌▐░▌          ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░▌
 ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀            ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀

                          ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄
                         ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌
                          ▀▀▀▀█░█▀▀▀▀ ▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀▀▀
                              ▐░▌     ▐░▌       ▐░▌▐░▌
                              ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄
                              ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
                              ▐░▌     ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀
                              ▐░▌     ▐░▌       ▐░▌▐░▌
                              ▐░▌     ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄
                              ▐░▌     ▐░▌       ▐░▌▐░░░░░░░░░░░▌
                               ▀       ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀

                     ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄       ▄▄
                    ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░▌     ▐░░▌
                    ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌░▌   ▐░▐░▌
                    ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌▐░▌ ▐░▌▐░▌
                    ▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌ ▐░▐░▌ ▐░▌
                    ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌  ▐░▌  ▐░▌
                    ▐░█▀▀▀▀█░█▀▀ ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌   ▀   ▐░▌
                    ▐░▌     ▐░▌  ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌
                    ▐░▌      ▐░▌ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌
                    ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌
                     ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀
                                                                                                "
end