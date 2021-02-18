class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@genre = []
@@artist = []

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
 genre_count = Hash.new(0)
 @@genre.each do {|genre| genre_count[genre] = 1}
 genre_count
end
 
 def self.artist_count
  artist_count = Hash.new(0)
  @@artists.each do {|artist| artist_count[artist] = 1}
  artist_count
  end
end
