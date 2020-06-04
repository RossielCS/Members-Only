class PostsController < ApplicationController
  include PostsHelper
  before_action :authenticate_user!, :except=>[:index]
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
