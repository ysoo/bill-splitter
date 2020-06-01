Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bills, only: [:index, :show, :create, :new] do
    resources :items, only: [:index, :show, :create, :new]
  end
  root 'bills#new'
end
