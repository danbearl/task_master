TaskMaster::Application.routes.draw do

  root 'pages#index'

  get 'log_in' => 'sessions#new'
  get 'log_out' => 'sessions#destroy'

  resources :users
  resources :sessions

  resources :pages, only: [:index, :new, :create]

  #keep these at the bottom of your file. They should be the last routes.
  get "/:slug", to: "pages#show", as: :slug
  get "/:slug/edit", to: "pages#edit", as: :edit_slug
  put "/:slug", to: "pages#update", as: :update_slug
  post "/:slug", to: "pages#destroy", as: :destroy_slug

end
