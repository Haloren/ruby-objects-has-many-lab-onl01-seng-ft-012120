require 'pry' 

class Song 
  attr_accessor :name, :artist     
  @@all = [] 
  
  def initialize(name) #is initialized with an argument of a name
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def artist_name
    if self.artist == nil  
      return nil  
    end 
    self.artist.name 
  end   
  
end 