class StoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @stories = current_user.stories.order(created_at: :asc)
  end

  def new
    @story = current_user.stories.new
  end

  def edit
    @story = current_user.stories.find(params[:id])
  end

  def update
    @story = current_user.stories.find(params[:id])
    if @story.update(story_params)
      redirect_to stories_path, notice: '更新成功！！'
    else
      render :edit
    end
  end

  def create
    @story = current_user.stories.new(story_params)
    if @story.save
      redirect_to stories_path, notice: '新增成功！！'
    else
      render :new
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :content, :status)
  end
end
