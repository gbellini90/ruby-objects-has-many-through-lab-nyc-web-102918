class Genre

@@all=[]

def self.all
  @@all
end

attr_accessor:songs,:name


def initialize(name)
  @name=name
  @@all << self
end

def songs
  Song.all.select do |song|
    song.genre == self
  end
end

def artists
  Song.all.map do |song|
    song.artist
  end
end

end
