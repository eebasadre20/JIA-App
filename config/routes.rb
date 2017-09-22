Rails.application.routes.draw do
  resources :profiles
  root to: 'profiles#new'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
