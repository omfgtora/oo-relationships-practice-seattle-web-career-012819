class Movie
  attr_reader :name
  attr_accessor :characters

  @@all = []

  def initialize(name)
    @name = name
    @characters = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_character(character_name, actor_name)
    # Instantiate a new character
    new_character = Character.new(character_name, actor_name)

    # In that new character instance, add this movie instance
    new_character.movies << self

    # In this movie instance, add this new character
    self.characters << new_character
  end
end
