class Post 
  attr_accessor :title, :author 
  @@all = []
  
  def initialize(title)
    @title = title 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def author_name 
    if self.author
      self.author.name 
    else
      nil 
    end
  end
  
  def add_post_by_title(new_post)
    post = Post.new(new_post)
    @@all << post 
    post.author = self
  end 
end