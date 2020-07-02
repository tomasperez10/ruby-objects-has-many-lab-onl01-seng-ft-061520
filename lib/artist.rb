class Artist
  attr_accessor :name
  
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def songs
    Song.all
  end
  
  def self.song_count
    @@song_count = 3
  end
end

Artist