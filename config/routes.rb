Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants, only: [:new, :create, :show] do
    resources :reviews, only: [ :new, :create ]
  end
end
