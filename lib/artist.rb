class Artist
attr_accessor :name
@@all = []     #The Artist class needs a class variable @@all that begins as an empty array

  def initialize(name)
    @name = name
    @@all << self   #An artist is initialized with a name and is saved in the @@all array.
  end


  def self.all      #The Artist class needs a class method .all that lists each artist in the class variable
    @@all
  end

  def new_song(name,genre) #song
    #new_song, that takes in an argument of a name and genre creates a new song.
    #That song should know that it belongs to the artist.
   Song.new(name,self,genre)

  end

  def songs
   #songs, that iterates through all songs and finds the songs that belong to that artist.
   #Try using select to achieve this.
   Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
 #genres that iterates over that artist's #songs and collects the genre of each song.
    self.songs.map do |song| #or map
      song.genre
    end
  end

end







#
# # puts pokemon[0][:abilities][0][:ability][:url]
# # puts pokemon[0][:name][:abilities][0][:url]
#
# # How would you return the first pokemon with base experience over 40?
#
# puts pokemon.find {|pokemon| [:base_experience]>40}
#
# # How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
#
# puts pokemon.select {|pokemon| [:base_experience]>40}
#
# # How would you return an array of all of the pokemon's names?
# pokemon_names=[]
# pokemon.each {|pokemon| pokemon_names << pokemon[:name]}
# pokemon_names
#
# or pokemon.map {|pokemon| pokemon[:name]}
#
# # How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#
# if pokemon.find {|pokemon|pokemon[:weight]>60}
#   puts true
# else puts false
# end
#
# puts pokemon.any? {|pokemon|pokemon[:weight]>60}
# #  whatever method you use should return true if there are any such pokemon, false if not.
