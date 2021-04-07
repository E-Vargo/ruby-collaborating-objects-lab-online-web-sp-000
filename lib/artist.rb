class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)
@name = name
@songs = []
save
end

def save
  @@all << self
end

def self.all
@@all
end

def add_song(song)
Song.all.select {|x| x.artist == self}
end

def songs
@songs
end

def self.find_or_create_by_name(artist_name)
array = self.all.select {|s| s.name == name} ? Artist.new = array[0] : Artist.new = artist_name
end

end
