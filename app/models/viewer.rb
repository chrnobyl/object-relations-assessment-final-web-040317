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
