class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all.push(self)
  end


  def self.all
    @@all
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
end


# class Post
#   attr_accessor :author, :title
#
#    def initialize(title)
#     @title = title
#   end
#
#   def self.all
#   end
#
#    def author_name
#     if author
#       self.author.name
#     else
#       nil
#     end
#   end
#
#  end
