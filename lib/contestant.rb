require 'colorizr'

class Contestant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    name.light_blue
  end
end
