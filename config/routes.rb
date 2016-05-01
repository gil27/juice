Rails.application.routes.draw do

  root to: 'search#index'
  
  get 'search/index', as: :search

  get 'stats' => 'stats#index'

  get 'frequency_chart' => 'stats#frequency_chart'

  get 'erase-db' => 'stats#erase', as: :erase_db

  get 'seed-db' => 'stats#seed', as: :seed_db
end