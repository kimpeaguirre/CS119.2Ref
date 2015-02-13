Rails.application.routes.draw do
  resources :teams
  resources :games
  resources :players
  resources :game_players
end
