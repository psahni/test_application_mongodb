class StoriesController < ApplicationController

  def new
    @story = Story.new
  end

  def index
    flash[:notice] = "test message test message"
    @stories = Story.all
  end

  def create
    @story = Story.new(params['story'])
    if @story.save
      redirect_to [:stories], :flash => {:notice => "Story has been successfully created"}
    else
      render :action => :new
    end
  end

end
