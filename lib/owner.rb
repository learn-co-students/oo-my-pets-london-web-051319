require_relative 'fish.rb'
class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
  end

  def self.all
    @@all
  end

  def self.count
    count = @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
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
    @pets.each do |key,value|
      value.each do |animal|
        animal.mood = "nervous"
      end
      value.clear
    end
  end

  def list_pets
    fish_counter = 0
    dogs_counter = 0
    cats_counter = 0
    @pets.each do |key,value|
      if key == :fishes
        fish_counter = value.length
      elsif key == :dogs
        dogs_counter = value.length 
      elsif key == :cats
        cats_counter = value.length
    end
  end
  "I have #{fish_counter} fish, #{dogs_counter} dog(s), and #{cats_counter} cat(s)."
end
end

