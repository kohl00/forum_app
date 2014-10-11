class StaticController < ApplicationController
	before_filter :authenticate_user!, except: [:login]
	
	def login

	end

	def feed
		@post=Post.new
		@category=params[:category]
		
		if @category.present?
			@posts=Post.all.where(:category=>params[:category]).order('created_at DESC').paginate(:page => params[:page], :per_page => 4)
		else
			@posts=Post.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 4)
		end
	end

	def category
		@category=params[:category]
		@posts=Post.all.where(:category=>params[:category]).order('created_at DESC').paginate(:page => params[:page], :per_page => 4)
	end

	private

end
