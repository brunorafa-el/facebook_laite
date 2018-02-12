class LikesController < ApplicationController
  before_action :set_post
  respond_to :js

  def like
    user = current_user
    user.like!(@post)
  end

  def dislike
    user = current_user
    like = user.dislike!(@post)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
