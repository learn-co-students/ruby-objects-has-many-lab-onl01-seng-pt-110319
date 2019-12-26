require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist=(n_artist)
    @artist = n_artist
    n_artist.songs << self
  end
  
  def artist
    @artist
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    self.artist.name if artist
  end

end