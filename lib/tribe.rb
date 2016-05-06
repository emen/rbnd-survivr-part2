require 'colorizr'

class Tribe
  attr_reader :name, :members

  def initialize(options)
    @name    = options[:name]
    @members = options[:members]
    puts "Tribe '#{to_s}': #{members.map(&:to_s).join(' ')}"
  end

  def tribal_council(immune: nil)
    @members.select { |member| member != immune }.sample.tap do |vote_off|
      @members.delete vote_off
    end
  end

  def to_s
    name.blue
  end
end
