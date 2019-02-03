class Character
  @@all = []

  attr_accessor :name, :actor, :shows, :movies

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
end
