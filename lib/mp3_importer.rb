class MP3Importer
  attr_accessor :path

def initialize(filename)
  @path = filename
end

def files
  @files = Dir.entries(@path)
  @files.delete_if {|f| f == ".." || f == "."}
end

def import(filename)
Song.new_by_filename(filename)
end


end
