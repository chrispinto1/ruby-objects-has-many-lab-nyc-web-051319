require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end

  def self.song_count
    binding.pry
    Song.all.count
  end
end
