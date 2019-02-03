class Show
  @@all = []

  attr_reader :name
  attr_accessor :characters

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

    # In that new character instance, add this show instance
    new_character.shows << self

    # In this show instance, add this new character
    self.characters << new_character
  end
end
