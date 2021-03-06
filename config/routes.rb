Rails.application.routes.draw do


  devise_for :admins,controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  namespace :admins do
    resources :end_users
    resources :items,only: [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :end_users,only: [ :show, :edit, :update, :confirm, :destroy]

  devise_for :end_users,controllers: {
  sessions:      'end_users/sessions',
  passwords:     'end_users/passwords',
  registrations: 'end_users/registrations'
}

  resources :tops,only: [:index]

  root :to => 'tops#index'

end
