class Dog

@@all = []

  attr_reader :name
  attr_accessor :mood

    def initialize(name)
      @name = name
      @mood = "nervous"
    end

  def self.all
      @@all
  end

  def new_dog
    @@all << self
  end

  def walkies
    @mood = "happy"
  end

  def sell
    @mood = "nervous"
  end
end
