class Owner
  # code goes here
  @@all_owners = []

  def initialize(name)
    @@all_owners << self
  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.count
  end

  def reset_all
  end
end
