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
