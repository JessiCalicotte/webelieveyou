class StoriesController < ApplicationController
def index
  @story = Story.order("RANDOM()").first
end
def new
  @story = Story.new
end
def create
    Story.create(story_path)
    redirect_to root_path
  end

  private

  def quote_params
    params.require(:story).permit(:stories, :survivor)
  end
end

