class PostsController < ApplicationController
    def index
        render "index.html"
    end

    def show
        @post = Post.first
        render :show
    end

end

