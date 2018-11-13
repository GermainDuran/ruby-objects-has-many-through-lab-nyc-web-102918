class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all  << self

  end

  def self.all
    @@all
  end

  # def add_song(song)
  #   @songs << song
  #   song.genre = self
  # end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    self.songs.collect do |song| #or map
      song.artist
    end
  end

end
