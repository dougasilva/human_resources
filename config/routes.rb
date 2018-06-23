Rails.application.routes.draw do
  resources :cargos
    resources :colaboradores
    root to: 'welcome#index'
  end