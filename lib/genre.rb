class Genre

  attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name
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

  def self.create(genre)
    genre = Genre.new(genre)
    genre.save
    genre

  end


end
