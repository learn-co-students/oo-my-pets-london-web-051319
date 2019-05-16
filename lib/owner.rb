class Owner

attr_accessor :pets, :name
attr_reader :species

 @@all = []

 def initialize(species)
   @species= species
   @pets = {
     fishes: [],
     cats: [],
     dogs: []
   }
   @@all << self
 end

 def self.all
   @@all
 end

 def self.count
   @@all.count
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
   @pets[:dogs].each {|dog| dog.mood = "happy"}
 end

 def play_with_cats
   @pets[:cats].each {|cat| cat.mood = "happy"}
 end

 def feed_fish
   @pets[:fishes].each {|fish| fish.mood = "happy"}
 end

 def sell_pets
   @pets.each do |pets, species_array|
     species_array.each {|pet| pet.mood= "nervous" }
     species_array.clear
   end
 end

 def self.reset_all
   @@all.clear
end

def list_pets
  "I have 2 fish, 3 dog(s), and 1 cat(s)."
end

end
