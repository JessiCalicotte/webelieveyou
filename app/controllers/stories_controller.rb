class StoriesController < ApplicationController
def index
  @story = Story.order("RANDOM()").first
end
def new
  @story = Story.new
end
def create
    Story.create(story_params)
    redirect_to root_path
  end

  private

  def story_params
    params.require(:story).permit(:stories, :survivor)
  end
end

