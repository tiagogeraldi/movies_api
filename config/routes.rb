MoviesApi::Application.routes.draw do
  resources :movies, :except => [:index, :edit, :show]

  resources :users, :except => [:index, :edit, :show]

  resources :likes, :only => [:create, :destroy]
end
