class ProfilesController < ApplicationController

def profile #mypage
	@user=User.find(current_user)
end

def edit #edit my profile
	@user=current_user
end

def update #update my profile
	@user=current_user
	@user.update(profile_params)
	redirect_to profile_path
	
end

private

def profile_params
	params.require(:user).permit(:first_name,:last_name,:avatar,:github_profile,:skype_profile,:personal_website,:email,:twitter_profile,:about_me,:interests)
end

end
