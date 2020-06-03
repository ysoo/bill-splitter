Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bills, only: [:index, :show, :create, :new] do
    resources :items, only: [:create]
    resources :percentages, only: [:create]
    resources :people, only: [:create, :index]
  end

  get 'bills/:id/calculated', to: 'bills#calculated', as: 'calculated'

  get "*any", via: :all, to: "errors#not_found"

  root 'bills#new'
end
