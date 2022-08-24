Rails.application.routes.draw do
  
  # get 'maps/index'

  root to: 'homes#top'
  get "/wiki" => "homes#wiki"
  resources :topics

  resources :events
  resources :maps, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
