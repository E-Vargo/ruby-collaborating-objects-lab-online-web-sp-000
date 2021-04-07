class MP3Importer
  attr_accessor :path

def initialize(filename)
  @path = filename
end

def files
  @files = Dir.entries(@path)
end

def import

end


end
