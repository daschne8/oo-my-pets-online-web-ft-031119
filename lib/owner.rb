class Owner
  attr_accessor :pets
  attr_reader
  @@all = []
  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  def self.reset_all
    @@all = []
  end
  def self.all
    @@all
  end
end
