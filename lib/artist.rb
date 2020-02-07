require 'pry'

class Artist 
  
  attr_accessor :name #has an attr_accessor for name
  @@songs = []
  
  def initialize(name) #is initialized with a name 
    @name = name 
  end
  
  def songs # go to song.rb 
    Song.all 
  end 
   
  def add_song(song)
    song.artist = self 
    @@songs << song 
  end 
  
  def add_song_by_name(name)
    add_song(Song.new(name))
  end 
  
  def self.song_count 
    Song.all.length 
  end   
  
end 