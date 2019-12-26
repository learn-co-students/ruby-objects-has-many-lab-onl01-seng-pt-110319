require 'pry'
class Post
  attr_accessor :title, :author
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def author
    @author
  end
  
  def author= (author)
    @author = author
    author.posts << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    author.name if author
  end
end