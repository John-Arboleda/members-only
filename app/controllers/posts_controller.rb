class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  # GET /posts
  def index
    @posts = Post.all.order('created_at DESC')
    @post = Post.new
  end

  # GET /posts/new
  def new
    @post = current_user.posts.build
  end

  # POST /posts
  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to root_path, notice: 'Post successfully created'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
