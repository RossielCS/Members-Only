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
    redirect_to shower_path
  end

  def shower
    @post = Post.where( user_id:current_user.id)
  end
end
