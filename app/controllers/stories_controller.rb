class StoriesController < ApplicationController

  def new
    @story = Story.new
  end

  def index
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
  
  
  def edit
    @story = Story.find(params[:id])
  end
  
  
  def update
    @story = Story.find(params[:id])
    if @story.update_attributes(params[:story])
      redirect_to [:stories], :flash => {:notice => "Story has been successfully updated"}
    else
      render :action => :edit 
    end
  end
  
  def destroy
    @story = Story.find(params[:id])
  end

end
