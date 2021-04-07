class MP3Importer
  attr_accessor :path

def initialize(filename)
  @path = filename
end

def files
  @files = Dir.entries(@path)
  @files.delete_if {|f| f == "." || f == ".."}
end

def import

end


end
