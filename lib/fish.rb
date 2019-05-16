class Fish

@@all = []

  attr_reader :name
  attr_accessor :mood

    def initialize(name)
      @name = name
      @mood = "nervous"
    end

def new_fish
  @@all << self
end

def self.all
  @@all
end

def feed
  @mood = "happy"
end

def sell
  @mood = "nervous"
end

end
