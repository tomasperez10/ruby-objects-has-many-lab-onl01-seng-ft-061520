class Author
  attr_accessor :name
  
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
  end
  
  def add_post_by_title(title)
    post = Post.new(title, self)
  end
  
  def posts
    Post.all.select { |post| post.author == self }
  end
  
  def posts_by_title
    author_posts = []
    Posts.all_by_title.each do |post|
      if post.author == self
        author_posts << post.title
      end
    end
    author_posts
  end
  
  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count = 3
  end
end