class StoriesController < ApplicationController
  before_action :authenticate_user!
  def new
    @story = current_user.stories.new
  end
end
