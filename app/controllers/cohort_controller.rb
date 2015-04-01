class CohortController < ApplicationController

def directory
	@students= User.all
end

end
