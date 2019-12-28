class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def self.all
    @@all
  end
end


# class Song
#   attr_accessor :genre, :artist, :name
#
#   def initialize(name, genre)
#     @name = name
#     self.genre = genre
#     genre.add_song(self)
#   end
# end
# # /////////////////////////////////  #=> This is the go-between class
# class Genre
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def songs
#     @songs
#   end
#
#   def add_song(song)
#     @songs << song
#   end
#
#   def artists                     #=> This is how the other two
#     self.songs.collect do |song|  #=> classes talk to each other
#       song.artist
#     end
#   end
# end
