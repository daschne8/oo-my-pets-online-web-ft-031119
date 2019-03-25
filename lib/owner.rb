class Owner
  attr_accessor :name
  attr_reader :species
  @@all = []
  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end
  def sey_species
    puts "I am #{@species}."
  end
  def self.reset_all
    @@all = []
  end
  def self.all
    @@all
  end
end
