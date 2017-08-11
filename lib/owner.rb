class Owner

	@@owners = []

	attr_reader :species
	attr_accessor :name, :pets

	def initialize(species)
		@species = "human"
		@name = name
		@@owners << self
		@pets={:fishes => [], :dogs => [], :cats => []} #put it up here

	end

	def name
		@name
	end

	def say_species
		"I am a #{@species}."
	end
 
	def self.all 
		@@owners
	end

	def self.reset_all
		@@owners.clear
	end

	def self.count
		@@owners.count
	end

	def buy_fish(name)
		@pets[:fishes] << Fish.new(name)
	end

	def buy_cat(name)
		@pets[:cats] << Cat.new(name)
	end

	def buy_dog(name)
		@pets[:dogs] << Dog.new(name)
	end

	def play_with_cats
		@pets[:cats].each do |cat|
			cat.mood = "happy"
		end
	end

	def walk_dogs
		@pets[:dogs].each do |dog|
			dog.mood = "happy"
		end
	end

	def feed_fish
		@pets[:fishes].each do |fish|
			fish.mood = "happy"
			end
		end

	def list_pets
		"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
	end

	def sell_pets
		@pets.each do |species, names|
			names.each do |name|
				name.mood = "nervous"
			end
		end
		@pets = {fishes: [], cats: [], dogs: []}
	end

end