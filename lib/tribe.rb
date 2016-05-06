class Tribe
  attr_reader :name, :members

  def initialize(options)
    @name    = options[:name]
    @members = options[:members]
    puts "Tribe '#{name}': #{members.map(&:to_s).join(' ')}"
  end

  def tribal_council(immune:)
    @members.select { |member| member != immune }.sample.tap do |vote_off|
      @members.delete vote_off
    end
  end

  def to_s
    name
  end
end
