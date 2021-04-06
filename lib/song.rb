class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
  save
end

def save
@@all << self
end

def self.all
  @@all
end

def self.new_by_filename()
end

def artist_name=(artist_name)
  name_array = Artist.all.select {|x| x.name == artist_name} ? Artist.new = name_array : Artist.new = artist_name
end

end
