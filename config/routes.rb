Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get 'books/list'
  get 'books/new'
  post 'books/create'
  patch 'books/update'
  get 'books/list'
  get 'books/show'
  get 'books/edit'
  get 'books/delete'
  get 'books/update'
  get 'books/show_subjects'

  get 'subjects/list'
  get 'subjects/new'
  post 'subjects/create'
end
