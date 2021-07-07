class Author
    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        new_post.author = self
        add_post(new_post)
    end

    def self.post_count
        Song.all.size
    end

end