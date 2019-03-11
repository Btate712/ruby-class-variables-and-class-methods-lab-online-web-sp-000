class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(song_name, artist, genre)
    #initialize instance variables
    @name = song_name
    @artist = artist
    @genre = genre

    #update class variables
    @@count += 1
    @@artists << @artist
    @@genres << @genre

    #Add artist and genre to their respective class variable arrays.
    #self.add_to_artists_array
    #self.add_to_genre_array
  end
end
