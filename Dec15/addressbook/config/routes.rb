Rails.application.routes.draw do
  root :to => "pages#index"

  get "/contacts", :to => "contacts#index", as: :contacts
  get "/contacts/new", :to => "contacts#new", as: :new_contact
  post "/contacts", :to => "contacts#create", as: :create_contact
  get "/contacts/:id", :to => "contacts#show", as: :contact
  get "/contacts/:id/edit", :to => "contacts#edit", as: :edit_contact
  post "/contacts/:id", :to => "contacts#update", as: :update_contact
  delete "/contacts/:id", :to => "contacts#destroy", as: :destroy_contact
end
