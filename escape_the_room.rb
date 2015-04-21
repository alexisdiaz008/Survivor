require './escape_the_room_modules.rb'
include EscapeTheRoomModule

#your wedding is in an hour
#time variable; if time at certain point, calls, too many calls, miss your wedding, fail game

skyline
pattern(":_::_::_::_:",":_::_:")do
title_screen
press_enter("                      PRESS ENTER TO BEGIN")
end

question_w_pattern(":_::_:",":_::_:","                              ***THE SCENE*** ", "Your eyes open slowly and the world starts to sharpen and fill with color as you feel your body coming to its senses. As you rise to your feet you can feel your head spin, a side effect of the poor decisions of the previous night. The only thing you can remember between the fuzzy memories of loud music and drinks is that yesterday was your bachelor party, and today is your special day. Where are you...? What happened...? And what's that smell...?")


#items_array=[]

loop do

    first=question_loop(":_::_:",":_::_:","Me: Now...How am I gonna get out of here..",
               "LOOK around, WAIT for help, take a NAP, or check ITEMS","look","wait","nap","items")

    case first
      when "look"
        second=question_loop(":_::_:",":_::_:","You take a quick look around the room.. The place is a warzone. Cans, glass bottles, and confetti are strewn about the floor in random disarray, along with a single window, and a mysteriously stained matress with no sheets decorates the corner next to a closet. What now?",
                 "BED, DESK , DOOR, CLOSET","bed","desk","door", "closet")
                 case second
                 when "bed"
                   third=question_loop(":_::_:",":_::_:","You start to take a closer look at the mattress, besides looking like its seen more action than the Expendables, it's mostly intact. There also appears to be some sort of noise emmitting from it.",
                            "INVESTIGATE ,or JUMP on bed ","investigate","jump", nil, nil)
                            case third
                            when "investigate"
                              puts "You move closer to the bed, trying to understand the the gutteral noise it seems to be expelling. As you move to check under the bed you slip and make some noise, at which point the noise stops and two eyes stare back at you from beneath the mattress. An old man who looks like, or may be, Danny Devito squirms out of from under the mattress much to your surprise! As he fumbles about the room he says that 'Modern Neuroscience has proved that all our actions and decisions are merely machinations of a predetermined universe and that our concept of 'free will' is naught but a comforting illusion' before jumping out the window."
                              danny_devito
                            when "jump"
                              puts " You rapidly and agressively climb on top of the bed and begin to jump on the bed when, the noise stops and two eyes stare back at you from beneath the mattress. An old man who looks like, or may be, Danny Devito squirms out of from under the mattress much to your surprise! As he fumbles about the room he says that 'Modern Neuroscience has proved that all our actions and decisions are merely machinations of a predetermined universe and that our concept of 'free will' is naught but a comforting illusion' before jumping out the window."
                              danny_devito
                              else
                                puts " You stand around for a good bit."
                              end
                 when "desk"
                   puts "You rummage through the desk but there's nothing but a few pencils and a picture of Nicolas Cage with the word 'BRATWURST'written on the back. You put the Picture in your pocket."
                 when "door"
                   fourth=question_loop(":_::_:",":_::_:","You walk up to the worn door with a fierce determination. You can:",
                              "KNOCK, SCREAM at, BANG head against, or try DOORKNOB","knock","scream","bang","doorknob")
                              case fourth
                                when "knock"
                                  fifth=question_loop(":_::_:",":_::_:","A hidden metal slide moves aside and you see someone looking back at you from the other side.",
                                           "Bruno: What is deh safety word","bratwurst", nil, nil, nil)
                                           break
                                when "scream at"
                                  fifth=question_loop(":_::_:",":_::_:","A hidden metal slide moves aside and you see someone looking back at you from the other side.",
                                           "Bruno: What is deh safety word","bratwurst", nil, nil, nil)
                                           break
                                when "bang head"
                                  fifth=question_loop(":_::_:",":_::_:","A hidden metal slide moves aside and you see someone looking back at you from the other side.",
                                           "Bruno: What is deh safety word","bratwurst", nil, nil, nil)
                                           break
                                when "doorknob"
                                  fifth=question_loop(":_::_:",":_::_:","A hidden metal slide moves aside and you see someone looking back at you from the other side.",
                                            "Bruno: What is deh safety word","bratwurst", nil, nil, nil)
                                           break
                                  else
                                    puts " You stare at the door for a minute or two."
                              end
                 when "closet"
                   puts "Empty besides a pile of towels that smell like week old gym socks."
                  else
                    puts " You stand around for a good bit."
                 end
      when "wait"
        puts "Yeah...I don't think anyone is coming for me..."
      when "nap"
        puts "I just woke up..."
      when "items"
        puts "I've got nothing but lint.."
      else
        puts " You stand around for a good bit."
    end
end

pattern(":_::_::_::_:",":_::_:")do
question_w_pattern(":_::_:",":_::_:","


 ", "Bruno opens the door!!!!!")
congratulations
end
