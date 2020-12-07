Rails.application.routes.draw do
  # get 'profiles/show'
  # get 'profile/index'

  devise_for :users

  #get 'mailing/index'

  root to: 'mailings#index'

  resource :profile, only: [:show, :edit, :update], path_names: { :show => '' }

  resource :dashboard, only: [:show, :new, :create, :edit, :update], path_names: { :show => '' }

  resource :postal_code, only: [:create] #, path_names: { :create => '' }
  resources :mailings

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
