Rails.application.routes.draw do


  devise_for :admins,controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  namespace :admins do
    resources :items,only: [:index, :new, :show, :edit, :create, :update, :destroy]
    resources :end_users
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :end_users,only: [ :show, :edit, :update, :confirm, :destroy]

  devise_for :end_users,controllers: {
  sessions:      'end_users/sessions',
  passwords:     'end_users/passwords',
  registrations: 'end_users/registrations'
}

  namespace :end_users do
   resources :tops,only: [:index]
   resources :items,only: [:index, :show]
   resources :cart_items do
    collection do
      delete 'destroy_all'
    end
   end
   resources :orders,only: [:new, :index, :show, :create] do
      collection do
        get 'verification'
        post 'verification'
        get 'complete'
      end
    end
  end

  root :to => 'tops#index'

end
