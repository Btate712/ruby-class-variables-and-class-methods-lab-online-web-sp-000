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
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  # class method genre_count returns a hash of genres and the number of songs
  # have those genres
  def self.genre_count
    return_hash = {}
    @@genres.each do |genre|
      if !return_hash.include?(genre)
        return_hash[genre] = 1
      else
        return_hash[genre] += 1
      end
    end
  end
end
