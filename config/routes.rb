Rails.application.routes.draw do
  root to: "blogs#index"
  resources :authors
  resources :books
  resources :blogs
end
