class Song 
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @artist = artist 
    save 
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist_name 
    if self.artist == nil 
      nil
    else 
      return self.artist.name 
    end
  end 
end 