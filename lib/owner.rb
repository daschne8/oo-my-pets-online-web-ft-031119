class Owner
  attr_accessor :pets
  attr_reader
  @@all = []
  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
  end
  def self.reset_all
    @@all = []
  end
end
