Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show]

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end

end
