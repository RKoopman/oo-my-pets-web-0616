class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  OWNERS = []

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    OWNERS
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.count
    OWNERS.length
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |pup|
      pup.mood = "happy"
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
      @pets.each do |species, name|
        name.each do |pet|
          pet.mood = "nervous"
        end
        name.clear
      end
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
