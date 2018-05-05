class Course
  attr_accessor :title, :schedule, :description, :id
  @@all = []
  @@ID = 1

  def initialize
    self.id = @@ID
    @@all << self
    @@ID += 1
  end

  def self.all
    @@all
  end

  def self.find_by_id
    self.detect{}
  end

  def self.reset_all
    @@all.clear
  end
end
