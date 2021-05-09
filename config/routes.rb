Rails.application.routes.draw do
  root 'restaurants#index'
  devise_for :users
  resources :restaurants do
    resources :foods, only: [:index]
  end
  resources :line_foods, only: %i[index create]
  put 'line_foods/replace', to: 'line_foods#replace'
  resources :orders, only: %i[create show]
end
