Rails.application.routes.draw do
  resources :qualificacoes
  resources :clientes
  match 'ola' => 'ola_mundo#index', via: 'get'

  resources :restaurantes
end
