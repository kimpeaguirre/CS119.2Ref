class ShoppingList < ApplicationController::Base
	
	has_many :shopping_list_items
	accepts_nested_attributes_for :shopping_list_items
	
end