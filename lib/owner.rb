class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [] , dogs: [], cats: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fishName)
    @pets[:fishes] << Fish.new(fishName)
  end

  def buy_cat(catName)
    @pets[:cats] << Cat.new(catName)
  end

  def buy_dog(dogName)
    @pets[:dogs] << Dog.new(dogName)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = []
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
