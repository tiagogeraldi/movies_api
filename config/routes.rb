MoviesApi::Application.routes.draw do
  resources :movies

  resources :users

  resources :likes
end
