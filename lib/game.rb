class Game
  attr_reader :tribes

  def initialize(tribe1, tribe2)
    @tribes = [tribe1, tribe2]
  end

  def add_tribe(tribe)
    @tribes << tribe
  end

  def immunity_challenge
    tribes.sample
  end
  
  def individual_immunity_challenge
    tribes.sample.members.sample
  end

  def clear_tribes
    @tribes = []
  end

  def merge(tribe_name)
    Tribe.new(name: tribe_name, members: tribes.flat_map {|tribe| tribe.members})
  end
end
