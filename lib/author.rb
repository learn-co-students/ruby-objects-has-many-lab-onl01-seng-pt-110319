require 'pry'
class Author 
  
  attr_accessor :name, :posts
  
  @@post_count = 1 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(title)
    @posts << title
    title.author = self
    @@post_count += 1
  end 
  
  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    self.posts << post_title
    post_title.author = self
    @@post_count += 1
  end 
  
  def self.post_count
    @@post_count
  end
  

end 