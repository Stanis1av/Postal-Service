Rails.application.routes.draw do
  get 'profile/index'
  devise_for :users
  get 'mailing/index'

  root to: 'mailing#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
