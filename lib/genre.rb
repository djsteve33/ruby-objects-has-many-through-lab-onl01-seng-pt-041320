class Genre 
  attr_accessor :name
  
  @@all = []
  
  def initalize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def songs 
    Songs.all.select{|song| song.genre == self}
    end
  end 
  
  def artists
    songs.map{|song|song.artist}
  end
end