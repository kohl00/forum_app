class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://placehold.it/350x200"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_many :posts, :dependent=>:destroy 
  has_many :likes
  has_many :comments
 
 def full_name
	[self.first_name,self.last_name].split(',').join(" ")
 end

end
