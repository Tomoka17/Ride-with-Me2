class CommentsController < ApplicationController
  def index
    @comments = Comments.order("created_at DESC")
  end

  def create
    Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, touring_id: params[:touring_id])
  end

end
