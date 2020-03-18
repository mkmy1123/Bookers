Rails.application.routes.draw do
  root 'home#index'
  get 'home/about' => 'home#about'
  devise_for :users , controllers: {
        sessions: 'users/sessions'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:create, :index, :show]
  resources :users, only: [:index, :show]
end
