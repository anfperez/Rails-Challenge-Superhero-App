Rails.application.routes.draw do
  resources :superpowers, only: [:index]
  resources :superheroes, only: [:index]

end
