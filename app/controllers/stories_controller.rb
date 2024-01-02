# rubocop:disable Metrics/MethodLength
class StoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_story, only: %i[edit update destroy]

  def index
    @stories = current_user.stories.published.order(created_at: :asc)
  end

  def show
    @story = current_user.stories.find(params[:id])
  end

  def new
    @story = current_user.stories.new
  end

  def create
    @story = current_user.stories.new(story_params)
    @story.status = 1 if params[:publish]
    if @story.save
      if params[:publish]
        redirect_to stories_path, notice: '新增成功！！'
      else
        redirect_to edit_story_path(@story), notice: '已存成草稿'
      end
    else
      render :new
    end
  end

  def edit; end

  def update
    if @story.update(story_params)
      if params[:publish]
        redirect_to stories_path, notice: '更新成功！！'
      else
        redirect_to edit_story_path(@story), notice: '已存成草稿'
      end
    else
      render :edit
    end
  end

  def destroy
    @story.destroy
    redirect_to stories_path, notice: '文章已刪除！'
  end

  private

  def story_params
    params.require(:story).permit(:title, :content, :status)
  end

  def find_story
    @story = current_user.stories.find(params[:id])
  end
end

# rubocop:enable Metrics/MethodLength
