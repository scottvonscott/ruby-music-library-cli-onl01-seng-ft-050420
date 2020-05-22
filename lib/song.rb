class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize (name, artist= nil)
    @name = name
    if artist == nil
       save
    else
      artist=(artist)
      save
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create(song)
    song = Song.new(song)
    song.save
    song
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end





end
