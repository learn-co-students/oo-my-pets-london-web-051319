class Owner
  # code goes here
  @@all_owners = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(name)
    @@all_owners << self
    @species = "human"
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.count
  end

  def reset_all
  end

  def say_species
    "I am a #{self.species}."
  end

 def buy_fish(name)
  self.pets[:fishes] << Fish.new(name)
 end

 def buy_cat(name)
  self.pets[:cats] << Cat.new(name)
 end

 def buy_dog(name)
  self.pets[:dogs] << Dog.new(name)
 end
end
