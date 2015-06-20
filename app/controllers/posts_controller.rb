class PostsController < ApplicationController
    def index
        render "index.html"
    end

    def show
       @post = Post.find( params["id"])
        render :show
    end

  
end

