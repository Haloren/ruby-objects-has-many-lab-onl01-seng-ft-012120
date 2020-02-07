require 'pry' 

class Song 
  attr_accessor :name, :artist     
  @@all = [] #is a class variable set to an array
  
  def initialize(name) #is initialized with an argument of a name
    @name = name 
    @@all << self #pushes new instances into a class variable called @@all upon initialization
  end
  
  def self.all #is a class method (self)
    @@all #returns an array of all song instances that have been created
  end
  
  def artist_name
    if self.artist == nil  
      return nil  
    end 
    self.artist.name 
  end   
  
end 