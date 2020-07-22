# learn spec/02_cat_spec.rb
require "pry"

class Cat
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []
  
  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
  end

  def self.all
    @@all
  end
end

# gomez = Cat.new("Gomez", "Chindalath")

# binding.pry


