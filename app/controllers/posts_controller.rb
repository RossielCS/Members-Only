class PostsController < ApplicationController
  include PostsHelper
  before_action :authenticate_user!, except: [:index]
  def index
    @post = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  # rubocop:disable  Style/GuardClause
  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash.notice = 'Post was successfully created.'
      redirect_to shower_path
    end
  end

  def shower
    @post = Post.where(user_id: current_user.id)
  end
end
# rubocop:enable  Style/GuardClause
