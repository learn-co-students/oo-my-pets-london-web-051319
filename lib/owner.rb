class Owner
require "pry"
attr_reader :species
attr_accessor :name, :pets

@@all = []
@@count = 0

  def initialize(species)
    @species = "human"
    @pets = {:cats => [], :dogs => [], :fishes => []}
    @@all << self
    @@count += 1

  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.walkies}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.playtime}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.feed}
  end

  def sell_pets
    @pets.values.each do |value|
      value.each do |pet|
        pet.sell
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
