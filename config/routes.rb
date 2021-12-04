Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :hello, only: :index
      resources :strokes, path: "performance-tracking"
      resources :mappings, path: "feature-mapping"
    end
  end
end
