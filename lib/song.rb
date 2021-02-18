class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@genre = []
@@artists = []

def initialize(song_name, artist, genre)
  @name = song_name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genre << genre
  @@artists << artist
 end
 
 def self.count
   @@count
end

def self.genre
  @@genre.uniq
end

def self.artists
  @@artists.uniq
end

def self.genre_count
  genre_count = {}
  @@genres.each do |genre|
    if genre_count[genre]
      genre_count[genre] += 1
    else 
      genre_count[genre] = 1

end
 
 def self.artist_count
  artist_count = Hash.new(0)
  @@artists.each {|artist| artist_count[artist] = 1}
  artist_count
  end
end
