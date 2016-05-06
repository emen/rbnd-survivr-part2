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
    tribes.first.members.sample
  end

  def clear_tribes
    @tribes = []
  end

  def merge(tribe_name)
    merged_tribe = Tribe.new(name: tribe_name, members: tribes.flat_map {|tribe| tribe.members})
    clear_tribes
    @tribes[0] = merged_tribe
  end

  def to_s
    tribes.map(&:to_s).join("\n")
  end
end
