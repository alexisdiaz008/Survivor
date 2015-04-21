#arr=(('a'..'z').to_a) + (('A'..'Z').to_a)

#p arr
def question_loop(setup, options,answer1,answer2,answer3,answer4)
    valid_action = ["#{answer1}","#{answer2}","#{answer3}","#{answer4}"]
    action = ask_question("#{setup}", "#{options}")

  until valid_action.include?(action)
    say nil, ["Are you sure about this...?", "I dunno about that...", "That's not going to work..", "Really?", "Let's try something that makes sense."].sample
    action = ask_question("#{setup}", "#{options}")
  end
  return action
end

def ask_question(setup, options)
  puts "", setup, "#{options}"
  gets.chomp.downcase
end
def say(person, phrase)
  unless person.nil?
    person = "#{person.capitalize}:"
  end
  puts "", "#{person} #{phrase}"
end





the_exit=false


items_array=[]
until the_exit==true do

first=question_loop("What should I do first?",
             "Look around, wait for help, THE EXIT, check items","look around","wait for help","THE EXIT","check items")

case first
when "look around"
    valid_action = ["answer1","answer2","answer3","answer4"]
    action = ask_question("setup", "options: answer1,answer2,answer3,answer4")

  until valid_action.include?(action)
    say nil, ["Are you sure about this...?", "I dunno about that...", "That's not going to work..", "Really?", "Let's try something that makes sense."].sample
    action = ask_question("setup", "options")
  end
when "wait for help"
  puts "test"
when "take a nap"
  puts "test"
when "check items"
  puts "I've got: "
  if items_array.empty?
    p "...nothing but lint"
  else
    items_array.each do |num|
      puts "#{num}"
    end
  end
else
  puts "I cant just stay here."
end
end
