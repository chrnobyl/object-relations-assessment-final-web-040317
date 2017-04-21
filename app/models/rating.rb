class Rating
  attr_accessor :score, :movie, :viewer

  ALL = []

  def initialize(score, movie, viewer)
    @score = score
    @movie = movie
    @viewer = viewer
  end

  def self.all
    ALL
  end

  def viewer
    self.viewer
  end


end
