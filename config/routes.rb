Rails.application.routes.draw do
  devise_for :users
  resources :servants
  resources :customers
  resources :tables
  resources :restaurants
  resources :appointments
  resources :patients
  resources :physicians
  root to: "blogs#index"
  resources :authors
  resources :books
  resources :blogs
  resources :suppliers
  resources :accounts
  resources :students
  resources :teachers
  resources :subjects
end
