class PostsController < ApplicationController
  def index
    @posts = Post.all
  end


  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

   # add create method here
end
