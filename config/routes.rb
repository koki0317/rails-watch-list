Rails.application.routes.draw do
  # get '/lists', to: 'lists#index', as: :lists
  # get '/lists/new', to: 'lists#new', as: :new_list
  # get '/lists/:id', to: 'lists#show', as: :list
  # post '/lists', to: 'lists#create'
  root 'lists#index'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
