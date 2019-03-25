class Owner
  attr_accessor
  attr_reader :species
  @@all = []
  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end
  def self.reset_all
    @@all = []
  end
  def self.all
    @@all
  end
end
