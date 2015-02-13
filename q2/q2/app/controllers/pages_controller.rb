class PagesController < ApplicationController

	def index
		@touristattractions = TouristAttraction.all
		render :template => "pages/index"
	end

end