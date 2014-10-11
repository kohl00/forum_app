class PostsController < ApplicationController

  before_action :authenticate_user!
  
  def new
  end

  def create
  	@post=Post.create({content: post_params[:content], category: post_params[:category].downcase});
  	#redirect_to static_feed_path
    if @post.new_record?
      flash[:success]= "Thanks for Sharing"
    end
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
