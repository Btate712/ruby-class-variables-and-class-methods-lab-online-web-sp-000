class Song
  @@song_count = 0
  @@artists = []
  @@genres = []
  
  def initialize(song_name, artist, genre)
    #initialize instance Variables
    @song_name = song_name
    @artist = artist
    @genre = genre

    song_count += 1

    #Add artist and genre to their respective class variable arrays.
    #Class variable arrays contain hashes with artist/genre as key and number
    #of each as value.
    add_to_artists_array
    add_to_genre_array
  end

  #Add_to_artists_array iterates through an array of hashes where each artists
  #is represented by a hash of {artist_name, artist_song_count}.  If a hash
  #with a key of artist_name is found, the artist_song_count is incremented.
  #If the artist is not already represented in the array, the arist is added
  #with a song count of 1.
  def self.add_to_artists_array   #Class method
    found = false
    @@artists.each do |artist_hash|
      artist_hash.each do |artist_name, artist_song_count|
        if artist_name == @artist
          artist_song_count += 1
          found = true
        end
      end
    end
    if !found
      @@artists[@artist] = {@artist => 1}
    end
  end

  #add_to_genre_array iterates through an array of hashes where each genre
  #is represented by a hash of {genre_name, genre_song_count}.  If a hash
  #with a key of genre_name is found, the genre_song_count is incremented.
  #If the genre is not already represented in the array, the genre is added
  #with a song count of 1.
  def self.add_to_genre_array  #class method
    found = false
    @@genres.each do |genre_hash|
      genre_hash.each do |genre_name, genre_song_count|
        if genre_name == @genre
          genre_song_count += 1
          found = true
        end
      end
    end
    if !found
      @@genres[@genre] = {@genre => 1}
    end
  end
end
