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

def self.new_by_filename(file_name)

end

def artist_name=(artist_name)
  Artist.find_or_create_by_name(artist_name)
end

end
