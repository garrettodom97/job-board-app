class PostsController < ApplicationController
  before_action :authenticate_user, except: [:index]
  before_action :authenticate_admin, except: [:index, :show]

  def index
    posts = Post.all
    render json: posts
  end

  def show
    post = Post.find(params[:id])
    render json: post
  end

  def create
    post = Post.new(
      title: params[:title],
      company: params[:company],
      description: params[:description],
      user_id: current_user.id,
    )
  end
end
