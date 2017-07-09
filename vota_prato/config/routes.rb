Rails.application.routes.draw do
  match 'ola' => 'ola_mundo#index', via: 'get'

  resources :restaurantes
end
