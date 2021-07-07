require 'pry'

class Song
  
  @@all = [] 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  ## knows the anme of it's artist
  def artist_name
    if self.artist 
      self.artist.name
    else 
      nil
    end
  end
  
end 




























