class PostsController < ApplicationController
    def index
        @posts = Post.all
        render "index.html.erb"
    end

    def show
       @post = Post.find( params["id"])
        render :show
    end

  
end

