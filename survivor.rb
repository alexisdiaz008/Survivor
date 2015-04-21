class SurvivorGame
  attr_accessor :tribes

  def initialize
    @tribes=[]

  end

  def add_tribe(tribes)
    @tribes<<tribes
  end

  def immunity_challenge
    losing_tribe=@tribes.sample
    puts "#{losing_tribe.name}: lost immunity challenge"
    losing_tribe
  end

end

class Tribe
  attr_accessor :contestants,:name

  def initialize(contestants, name)
    @contestants=contestants
    @name=name
  end

  def vote_out_member
    losing_person=@contestants.sample
    puts "#{losing_person}: has been voted off the island!"
    contestants.delete(losing_person)
  end

end
#
# class LosingTribe<Tribe
#
#     def vote_out_member
#     end
# end

def test

season1=SurvivorGame.new

pagon=Tribe.new(["Sean", "Lulu", "Kevin", "Walter"],"pagon")
ogakor=Tribe.new(["Dan","jeff", "alex", "ed"], "ogakor")
season1.add_tribe(ogakor)
season1.add_tribe(pagon)
p season1.tribes

losing_tribe=season1.immunity_challenge
puts losing_tribe.contestants
losing_tribe.vote_out_member
puts losing_tribe.contestants

losing_tribe.vote_out_member
puts losing_tribe.contestants

losing_tribe.vote_out_member
puts losing_tribe.contestants

losing_tribe.vote_out_member
puts losing_tribe.contestants

end

test
