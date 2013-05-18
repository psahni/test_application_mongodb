class StoriesController < ApplicationController
  def new
    @story = Story.new
  end

  def index
  end
end
