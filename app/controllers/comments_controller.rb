class CommentsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def create
    @story = Story.find(params[:story_id])
    @comment = @story.comments.build(params[:comment].merge(:user_id => current_user.id))
    if @comment.save
    else
      render :json => @comment.errors, :status => 401
    end
  end
  
  
end
