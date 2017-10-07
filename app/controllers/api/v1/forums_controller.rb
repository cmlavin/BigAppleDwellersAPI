class Api::V1::ForumsController < ApplicationController

  def index
    @forums = Forum.all
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)
    @forum.save
  end

  def show
    @forum = Forum.find(params[:id])
  end

  def edit
    @forum = Forum.find(params[:id])
  end

  def update
    @forum = Forum.find(params[:id])
    @forum.update(forum_params)
  end

  def destroy
    @forum = Forum.find(params[:id])
    @forum.destroy
  end

  private

  def forum_params
    params.require(:forum).permit(:name)
  end

end
