class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  
  @@dogs = []
  
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@dogs << self
  end
  
  def self.all
    @@dogs
  end
end