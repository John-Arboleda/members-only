class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  # GET /posts/new
  def new
    @post = current_user.posts.build
  end
end
