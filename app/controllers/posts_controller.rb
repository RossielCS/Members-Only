class PostsController < ApplicationController
  include PostsHelper
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post=Post.new(post_params)
    @post.save
    redirect_to posts_path
  end  
end
