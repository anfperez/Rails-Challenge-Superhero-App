Rails.application.routes.draw do

  root 'superheroes#index'
  resources :superpowers, param: :name
  resources :superheroes

  get 'superheroes/already_exists' => 'superheroes#already_exists'


end
