class Api::V1::PostsController < Api::V1::BaseController
  before_action :authenticate_user
  before_action :authorize_user
  before_action :set_topic

  def update
    post = @topic.posts.find(params[:id])
    
    if post.update_attributes(post_params)
      render json: post.to_json, status: 200
    else
      render json: {error: "Post update failed", status: 400}, status: 400
    end
  end
 
  def create
    post = @topic.posts.build(post_params)
    
    if post.valid?
      post.save!
      render json: post.to_json, status: 201
    else
      render json: {error: "Post is invalid", status: 400}, status: 400
    end
  end
 
  def destroy
    post = @topic.posts.find(params[:id])
     
    if post.destroy
      render json: {message: "Post destroyed", status: 200}, status: 200
    else
      render json: {error: "Post destroy failed", status: 400}, status: 400
    end
  end

  private
   
  def post_params
    params.require(:post).permit(:title, :body, :topic_id, :user_id)
  end
   
  def set_topic
    @topic = Topic.find(params[:topic_id])
  end
end