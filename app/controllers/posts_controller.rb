class PostsController < ApplicationController
  
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    
  end  
end
