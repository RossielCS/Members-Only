class PostsController < ApplicationController
  include PostsHelper
  before_action :authenticate_user!, :except=>[:index]
  def index
    @post = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create

    @post=current_user.posts.build(post_params)
    
    @post.save
    redirect_to posts_path
  end  
end
