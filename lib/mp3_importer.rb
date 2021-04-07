class MP3Importer
  attr_accessor :path

def initialize(filename)
  @path = filename
end

def files
  @files = Dir.entries(@path)
  @files.delete_if {|f| f == ".." || f == "."}
end

def import
self.each do |file|
  song = Song.new_by_filename(file)
  Artist.all << song.artist unless Artist.all.include?(song.artist)
end


end
