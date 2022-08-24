class TopicsController < ApplicationController
  def index
    @topic = Topic.new
    @topics = Topic.all
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.save
    redirect_to topics_path
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :content)
  end
end
