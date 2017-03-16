class Owner
  # code goes here
 
  attr_accessor :pets, :name, :new_cat, :new_dog, :new_fish
  attr_reader :species

  @@owners = []

 	def self.all
		@@owners
  end

  def self.count
  	@@owners.count
  end

  def self.reset_all
  	@@owners = []
  end

  def initialize(name)
  	@name = name
  	@pets = {
  		fishes: [],
  		cats: [],
  		dogs: []
  	}
  	@species = "human"
  	@@owners << self
  end

  def buy_cat(name)
  	@new_cat = Cat.new(name)
  	@pets[:cats] << new_cat
  end

  def buy_dog(name)
  	@new_dog = Dog.new(name)
  	@pets[:dogs] << new_dog
  end

  def buy_fish(name)
  	@new_fish = Fish.new(name)
  	@pets[:fishes] << new_fish
  end

  def say_species
  	"I am a #{@species}."
  end

  def walk_dogs
  	@pets[:dogs].each do |dog|
  		dog.mood = "happy"
  	end
  end

  def play_with_cats
  	@pets[:cats].each do |cat|
  		cat.mood = "happy"
  	end
  end

  def feed_fish
  	@pets[:fishes].each do |fish|
  		fish.mood = "happy"
  	end
  end

  def sell_pets
  	@pets.values.each do |pets|
  		pets.each do |pet|
  			pet.mood = "nervous"
  		end
  	end

  	@pets = {
  		fishes: [],
  		cats: [],
  		dogs: []
  	}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end

# jamal = Owner.new("jamal")


