class Song
  attr_accessor :name :artist
  @@all = []
  
  def initialize(name)
    @song = name
    @@all << name
  end
  
  def self.all 
    @@all
  end
  
  def name
    self.name
  end 
  
end
  
  