Rails.application.routes.draw do

  root 'superheroes#index'
  resources :superpowers
  resources :superheroes

end
