class PagesController < ApplicationController
	
	def dashboard
		puts "Hey I'm dashboard"
		render :template => "pages/dashboard"
		#shortcut for view: make sure that the last line of your controller method is render
		#views folder is then expected to have a folder called pages and a file called dashboard
			#file extension is .html.erb
	end

end