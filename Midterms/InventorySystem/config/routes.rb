Rails.application.routes.draw do
  
  root to: "pages#index"

  get "/items", to: "items#index", as: :items
  get "/items/:id/show", to: "items#show", as: :item
  get "/items/new", to: "items#new", as: :new_item
  post "/items/create", to: "items#create", as: :create_item
  get "/items/:id/edit", to: "items#edit", as: :edit_item
  post "/items/:id/update", to: "items#update", as: :update_item
  delete "/items/:id", to: "items#destroy", as: :destroy_item

get "/inventory_items", to: "inventory_items#index", as: :inventory_items
get "/inventory_items/:id/show", to: "inventory_items#show", as: :inventory_item
get "/inventory_items/new", to: "inventory_items#new", as: :new_inventory_item
post "/inventory_items/create", to: "inventory_items#create", as: :create_inventory_item
get "/inventory_items/:id/edit", to: "inventory_items#edit", as: :edit_inventory_item
post "/inventory_items/:id/update", to: "inventory_items#update", as: :update_inventory_item
delete "/inventory_items/:id", to: "inventory_items#destroy", as: :destroy_inventory_item

get "/inventory_transactions", to: "inventory_transactions#index", as: :inventory_transactions
get "/inventory_transactions/:id/show", to: "inventory_transactions#show", as: :inventory_transaction
get "/inventory_transactions/new", to: "inventory_transactions#new", as: :new_inventory_transaction
post "/inventory_transactions/create", to: "inventory_transactions#create", as: :create_inventory_transaction
get "/inventory_transactions/:id/edit", to: "inventory_transactions#edit", as: :edit_inventory_transaction
post "/inventory_transactions/:id/update", to: "inventory_transactions#update", as: :update_sinventory_transaction
delete "/inventory_transactions/:id", to: "inventory_transactions#destroy", as: :destroy_inventory_transaction
end
