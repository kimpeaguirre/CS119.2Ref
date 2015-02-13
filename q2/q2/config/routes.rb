Rails.application.routes.draw do
  
  root :to => "pages#index"

  get "/tourists/:id", :to => "tourists#show", :as => :tourists

end
