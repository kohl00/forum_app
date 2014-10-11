class AddPersonaltoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :about_me, :text
  	add_column :users, :interests, :text
  	add_column :users, :github_profile, :string
  	add_column :users, :skype_profile, :string
  	add_column :users, :twitter_profile, :string
  	add_column :users, :personal_website, :string

  end
end
