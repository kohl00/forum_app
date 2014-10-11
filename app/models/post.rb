class Post < ActiveRecord::Base
	validates_presence_of :content
	validates_presence_of :category

	has_many :likes, :dependent=>:destroy
	belongs_to :user, :dependent=>:destroy
	has_many :comments
	

	def is_liked_by( some_user)
		Like.where(:user_id=>some_user.try(:id))
			.where(:post_id=>self.id)
			.exists?
	end

	def add_a_like_for(some_user)
		Like.create({:user_id=>some_user.id, :post_id=>self.id})
  		@post_was_liked= true
	end
end

