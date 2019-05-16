require_relative "./cat.rb"
require_relative "./dog.rb"
require_relative "./fish.rb"

require "pry"

class Owner

  @@all = []
  @@counter = 0

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@counter += 1
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def play_with_cats
    @pets[:cats].each do |inst|
      inst.mood = "happy"
    end
  end

  def walk_dogs
    @pets[:dogs].each do |inst|
      inst.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |inst|
      inst.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pets, arr|
      arr.each do |inst|
        inst.mood = "nervous"
      end
    end
    @pets = []
  end

  def list_pets
    dogs = @pets[:dogs].length
    cats = @pets[:cats].length
    fish = @pets[:fishes].length
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@counter
  end

  def self.reset_all
    @@all = []
    @@counter = 0
  end

  def say_species
    "I am a #{species}."
  end
end
