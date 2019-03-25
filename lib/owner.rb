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
    puts "I am a #{@species}."
  end

end
