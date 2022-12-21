Rails.application.routes.draw do
  resources :books
  #root to: "authors#index"
  root to: "books#index"
  resources :authors
end
