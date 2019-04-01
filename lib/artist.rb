class Artist 
  
  attr_accessor :name, :songs  
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(new_song)
    song = Song.new(new_song)
    song.artist = self 
  end
  
  def songs 
    @songs 
  end
  
end