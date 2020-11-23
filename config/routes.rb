Rails.application.routes.draw do
  # get 'profiles/show'
  # get 'profile/index'

  devise_for :users

  get 'mailing/index'

  root to: 'mailings#index'

  resource :profile, only: [:show, :edit, :update], path_names: { :show => '' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
