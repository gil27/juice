require 'sidekiq/web'
Rails.application.routes.draw do

  root to: 'search#index'
  mount Sidekiq::Web => '/sidekiq'
  
  get 'search/index', as: :search

  get 'stats' => 'stats#index'
end
