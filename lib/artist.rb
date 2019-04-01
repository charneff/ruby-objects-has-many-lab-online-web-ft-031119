class Artist 
  
  attr_accessor :name, :songs  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(song)
    @songs << song 
    @@all << song 
    song.artist = self 
  end
  
  def songs 
    @songs 
  end
  
end