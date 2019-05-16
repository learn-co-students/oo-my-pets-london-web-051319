class Owner
  # code goes here
  attr_accessor :pets
  @@all = []
  @@count = 0

  def initialize(pets)
  @pets = {fishes: [], cats: [], dogs: []}
  @species = "human"
  @name
  @@all << self
  @@count += 1
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    dog
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def mood
    @mood
  end

  def mood=(mood)
    @mood = mood
  end

  def species
    @species
  end

  def say_species
    "I am a #{species}."
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
    @pets.each do |type, pet|
    @pets[type].each do |pet|
      pet.mood = "nervous"
    end
  end
    @pets.clear
  end

  def list_pets
    fish_counter = @pets[:fishes].length
    dog_counter = @pets[:dogs].length
    cat_counter = @pets[:cats].length
    "I have #{fish_counter} fish, #{dog_counter} dog(s), and #{cat_counter} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end


end