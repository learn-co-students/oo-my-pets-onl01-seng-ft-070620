class Owner
  attr_accessor :pets, :cats, :dogs
  attr_reader :name, :species
  @@all = []
  
  def initialize(name=nil)
    @name = name
    @species = species
    @@all << self
  end
  
  def species()
    @species = "human"
  end
  
  def say_species()
    "I am a #{@species}."
  end
  
  def self.all()
    @@all
  end
  
  def self.count()
    @@all.length
  end
  
  def self.reset_all()
    @@all.clear
  end
  
  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end
  
  def cats()
    all_cats = []
    Cat.all.each do |cats|
      if self == cats.owner
        all_cats << cats
      end
    end
    all_cats
  end
  
  def dogs()
    all_dogs = []
    Dog.all.each do |dogs|
      if self == dogs.owner
        all_dogs << dogs
      end
    end
    all_dogs
  end
  
  def walk_dogs()
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats()
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def list_pets()
    dog_num = Cat.all.length/10
    cat_num = Dog.all.length/10
    "I have #{dog_num} dog(s), and #{cat_num} cat(s)."
  end
  
  def sell_pets()
    Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
end