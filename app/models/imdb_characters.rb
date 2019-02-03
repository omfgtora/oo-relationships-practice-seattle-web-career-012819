class Character
  attr_accessor :name, :actor, :shows, :movies

  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor

    @shows = []
    @movies = []

    @@all << self
  end

  def self.all
    @@all
  end

  def all_appearances
    Character.all.select { |character| character == self }
  end
end
