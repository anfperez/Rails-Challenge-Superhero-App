Rails.application.routes.draw do

  root 'superheroes#index'
  resources :superpowers
  resources :superheroes do
    resources :superpowers
  end

  get 'superheroes/already_exists' => 'superheroes#already_exists'


end
