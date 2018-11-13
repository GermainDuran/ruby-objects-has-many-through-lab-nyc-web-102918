class Song
  attr_accessor :name, :genre, :artist #this is the join table
  @@all = []
                #string , #instance #instance
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
  end


  def self.all
    @@all
  end
  
end
