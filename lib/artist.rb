require 'pry'

class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize (name)
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

  def self.destroy_all
    self.all.clear
  end

  def self.create(artist)
    artist = Artist.new(artist)
    artist.save
    artist
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    @songs
  end


end
