Rails.application.routes.draw do
  # Special route to the root directory of the application
  # URL: http://localhost:3000/
  

  root(:to => "pages#index") #method to map "/" to a controller#method
  #To look for a file called 
  #app/controllers/pages_controller.rb


  #root to: "pages#index"

  # 'get' is the simplest route definition
  # Syntax: get "[url_pattern]", to: "controller_name#method", as: :some_name
  # Things to notice:
  #   > get is a function with optional use of ()
  #   > you are passing symbols with values as arguments to get
  #   > issue the command 'rake routes' to see what names were created for the routes

  get "/about", to: "pages#about", as: :about
  #get produces the route that can be accessed by the variable produced by "as"

  get "/contact", to: "pages#contact", as: :contact

  get "/marketplace", to: "pages#marketplace", as: :marketplace

                            #^they expect those files inside the pages folder
end
