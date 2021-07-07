require 'pry'

class Artist 
  
  attr_accessor :name

  @@song_count = 1
  ##  initialized with a name
  def initialize(name)
    @name = name
  end
  
  ## has many songs
  def songs
    Song.all.select {|song| song.artist = self}
  end
  
  ## takes in arguement of a song and associates that song with the aritst by telling the song that it belongs to that artist
  def add_song(song)
    song.artist = self
    @@song_count += 1
  end
  
  ## takes in an arguement of a song name, creates a new song with it and associates the song and artist
  def add_song_by_name(song)
    song = Song.new(song)
    @@song_count += 1
  end
  
  ## is a class method that returns the total number of songs associated to all existing artists
  def self.song_count 
    @@song_count
  end 
end























