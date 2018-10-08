class Author
  attr_accessor :name
  @@posts_count = 0

  def initialize name
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post post
    post.author = self
    @posts << post
    @@posts_count += 1
  end

  def add_post_by_title title
    post = Post.new title
    post.author = self
    posts << post
    @@posts_count += 1
  end

  def self.post_count
    @@posts_count
  end
end
