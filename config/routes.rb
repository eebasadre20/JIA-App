Rails.application.routes.draw do
  devise_for :admins

  authenticated :admin do
    resources :profiles, only: [:index, :update, :edit, :destroy]
    root 'profiles#index', as: :authenticated_root
  end

  resources :profiles, only: [:new, :create, :show]
  root 'profiles#new'
end
