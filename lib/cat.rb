class Cat
  attr_accessor :mood, :owner
  attr_reader :name
  
  @@cats = []
  
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@cats << self
  end
  
  def self.all()
    @@cats
  end
end