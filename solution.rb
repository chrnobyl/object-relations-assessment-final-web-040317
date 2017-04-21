# Please copy/paste all three classes into this file to submit your solution!
class Viewer
  attr_accessor :first_name, :last_name

  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    ALL
  end


  def ratings
    self.ratings
  end

  def self.find_by_name(name)
    self.all.find do |viewer|
      viewer.full_name == name
    end
  end

  def create_rating(score, movie)
    rating = Rating.new(score, movie, self)
    rating.viewers << self
  end


end

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

class Movie
  attr_accessor :title

  ALL = []

  def initialize(title)
    @title = title
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_title(title)
    self.all.find do |movie|
      movie.title == title
    end
  end

  def ratings
    self.find_by_title(self.title)
  end

  def viewers
    Rating.all.collect do |r|
    if r.movie == self
      r.viewer
    end
  end

end
end
