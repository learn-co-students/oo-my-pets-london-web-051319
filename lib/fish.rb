class Fish
  attr_reader :name
  attr_accessor :mood

  def initialize(name, mood)
    @name = name
    @mood = "nervous"
  end