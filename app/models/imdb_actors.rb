class Actor
  attr_reader :name
  attr_accessor :characters, :movies, :shows

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    Character.all.select { |character| character.actor == self }
  end

  def movies
    self.characters.collect { |character| character.movies }
  end

  def shows
    self.characters.collect { |character| character.shows }
  end
end
