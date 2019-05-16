require "pry"
require_relative "fish.rb"
require_relative "dog.rb"
require_relative "cat.rb"

class Owner
  attr_reader :species
  attr_accessor :name, :pets
  attr_writer

 @@all = []

  def initialize(species)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
  return "I am a #{@species}."
  end

  def buy_fish(name)
  fish1 =Fish.new(name)
  @pets[:fishes]<<fish1


  end

  def buy_cat(name)
    cat1 = Cat.new(name)
    @pets[:cats]<<cat1

  end

  def buy_dog(name)
    dog1 = Dog.new(name)
    @pets[:dogs]<<dog1

  end

  def walk_dogs
    @pets[:dogs].each do |pet|
      pet.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |pet|
      pet.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |pet|
      pet.mood ="happy"
    end
  end

  def sell_pets
    @pets.each do |type, pets|

      @pets[type].each do |pets|
      pets.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    fish_number = @pets[:fishes].length
    dog_number = @pets[:dogs].length
    cat_number = @pets[:cats].length
    "I have #{fish_number} fish, #{dog_number} dog(s), and #{cat_number} cat(s)."
  end

def self.all
  @@all
end

def self.count
  @@all.length
end

def self.reset_all
  @@all.clear
end

end