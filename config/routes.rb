Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/delete'
  resources :cocktails do
    resources :doses
  end
  resources :doses, only: [:destroy]
end
