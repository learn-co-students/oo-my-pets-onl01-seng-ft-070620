require 'owner.rb'

class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all
end
