Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show]

      resources :items, only: [:create]

      resources :orders, only: [:show]

      resource :order, only: [] do
        member do
          get 'current'
        end
      end
    end
  end
end
