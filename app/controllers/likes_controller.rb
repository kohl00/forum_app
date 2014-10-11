class LikesController < ApplicationController
  def create
  	@post=Post.find(params[:id])
  	@like=Like.find_by(:user_id=>current_user.id, :post_id=>@post.id)

    	if @like.nil? 
    		@like=Like.create({:user_id=>current_user.id, :post_id=>@post.id})
    		@post_was_liked= true
        #@post.add_a_like_for( current_user )
    	else 
    		@like.destroy
    		@post_was_liked=false
        #@post.is_liked_by( current_user )
    	end

  end
end
