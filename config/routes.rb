Rails.application.routes.draw do
  resources :users

  get "dashboard", to: "dashboard#index"
  controller :sessions do
    get "login" => :new
    post "login" => :create
    delete "logout" => :destroy
  end
  root "pages#welcome"
  get "up" => "rails/health#show", as: :rails_health_check
end
