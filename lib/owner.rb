class Owner
  attr_accessor :name
  attr_reader :species, :pets
  @@all = []
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end
  def self.reset_all
    @@all = []
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
    self.pets[:dogs].each { |dog| dog.mood = "happy"  }
  end
  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy"  }
  end

end
