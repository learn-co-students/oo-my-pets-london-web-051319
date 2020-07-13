require_relative ("cat.rb")
require_relative ("dog.rb")
require_relative ("fish.rb")
require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  # code goes here


  @@all = []


    def initialize(species)
      @species = species
      @@all << self
      @pets = {:fishes => [], :dogs => [], :cats => []}

    end

    def self.all
      @@all
    end

    def say_species
    "I am a human."
    end

    def self.count
      @@all.count
    end

    def self.reset_all
      @@all.clear
    end


    def buy_fish(name)
      new_fish = Fish.new(name)
      @pets[:fishes] << new_fish
      @pets[:fishes]
    end

    def buy_cat(name)
      new_cat = Cat.new(name)
      @pets[:cats] << new_cat
      @pets[:cats]
    end

    def buy_dog(name)
      new_dog = Dog.new(name)
      @pets[:dogs] << new_dog
      @pets[:dogs]
    end

    def walk_dogs
      @pets[:dogs].each do |i|
        i.mood = "happy"
      end
    end

    def play_with_cats
      @pets[:cats].each do |i|
        i.mood = "happy"
      end
    end

    def feed_fish
      @pets[:fishes].each do |i|
        i.mood = "happy"
      end
    end

    def sell_pets
      @pets[:fishes, :cats, :dogs].each do |i|
        i.mood = "nervous"
        
    end

end



#binding.pry
