class CohortController < ApplicationController

def directory
	@students= User.all
end

def show #studentsprofilepage
	@user=User.find(params[:id])
end

end
