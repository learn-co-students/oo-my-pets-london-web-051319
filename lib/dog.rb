class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end




end