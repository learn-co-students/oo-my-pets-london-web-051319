require 'pry'
class Owner

  attr_accessor :name, :pets
  attr_reader :species


@@all =[]


  def initialize(name)
     @name = name
     @species = "human"
     @@all << self
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
  @@all.length
end

def self.reset_all
  @@all.clear
end

def say_species
  "I am a #{@species}."
end

def buy_fish(fish_name)
  fish = Fish.new(fish_name)
  @pets[:fishes] << fish
end

def buy_cat(cat_name)
  cat = Cat.new(cat_name)
  @pets[:cats] << cat
end

def buy_dog(dog_name)
  dog = Dog.new(dog_name)
  @pets[:dogs] << dog
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = 'happy'
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = 'happy'
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = 'happy'
  end
end

def sell_pets
  @pets.each do |pt, arr|
    arr.each do |type|
      type.mood = 'nervous'
    end
    arr.clear
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
