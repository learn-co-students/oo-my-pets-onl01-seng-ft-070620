class Owner
  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.filter{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.filter{|dog| dog.owner == self}
  end

  def buy_cat(cat)
    cat = Cat.new(cat, self)
  end

  def buy_dog(dog)
    dog = Dog.new(dog, self)
  end

  def walk_dogs
    Dog.all.each{|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.each{|cat| cat.mood = "happy"}
  end

  def sell_pets
    Dog.all.each{|dog| dog.mood = "nervous"}
    Cat.all.each{|cat| cat.mood = "nervous"}
    Dog.all.each{|dog| dog.owner = nil}
    Cat.all.each{|cat| cat.owner = nil}
  end

  def list_pets
    num_of_dogs = dogs.length
    num_of_cats = cats.length
    "I have #{num_of_dogs} dog(s), and #{num_of_cats} cat(s)."
  end
end
