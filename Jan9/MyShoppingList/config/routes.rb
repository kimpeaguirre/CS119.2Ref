Rails.application.routes.draw do

root to: "pages#index"

get "/shops", to: "shops#index", as: :shops
get "/shops/:id/show", to: "shops#show", as: :shop
get "/shops/new", to: "shops#new", as: :new_shop
post "/shops/create", to: "shops#create", as: :create_shop
get "/shops/:id/edit", to: "shops#edit", as: :edit_shop
post "/shops/:id/update", to: "shops#update", as: :update_shop
delete "/shops/:id", to: "shops#destroy", as: :destroy_shop

get "/items", to: "items#index", as: :items
get "/items/:id/show", to: "items#show", as: :item
get "/items/new", to: "items#new", as: :new_item
post "/items/create", to: "items#create", as: :create_item
get "/items/:id/edit", to: "items#edit", as: :edit_item
post "/items/:id/update", to: "items#update", as: :update_item
delete "/items/:id", to: "items#destroy", as: :destroy_item

end
