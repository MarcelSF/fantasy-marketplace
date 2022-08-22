Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'bookings_manager', to: 'dashboards#bookings_manager', as: :dashboards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :wares do
    resources :bookings, only: [:create, :destroy]
    collection do
      get "my_wares", as: :my
    end
  end
end
