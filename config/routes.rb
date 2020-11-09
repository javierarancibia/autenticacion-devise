Rails.application.routes.draw do
  devise_for :users
  resources :stories
  get 'mis_historias', to: 'stories#user_stories', as: 'my_stories'
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
