class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.artist = self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    Song.all.map{|name| name.genre}
  end
end
