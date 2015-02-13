class TouristsController < ApplicationController

	def show
		@touristattraction = TouristAttraction.find(params[:id])
		render(:template => "tourists/show")
	end

end