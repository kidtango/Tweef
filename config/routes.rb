Rails.application.routes.draw do
  resources :comments
  resources :photos
  resources :tank_profiles
  devise_for :users, path: "", path_names: {sign_in: "login", sign_out: "logout", sign_up: "register"}

  resources :discussions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#home"
end
