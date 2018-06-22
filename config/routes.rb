Rails.application.routes.draw do
    resources :colaboradores
    root to: 'welcome#index'
  end