class PostsController < ApplicationController

  before_action :authenticate_user!
  
  def new

  end

  def create
    @post = current_user.posts.new({content: post_params[:content], category: post_params[:category].downcase})
  	#@post=Post.create({content: post_params[:content], category: post_params[:category].downcase});
   #@post.user_id = current_user.id if current_user
   @post.save
  end

  def show
  end

  def index
  end

  private

  def post_params
  	params.require(:post).permit(:content, :category)
  end

end
