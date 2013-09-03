Flix::Application.routes.draw do


  get "info/contact"
  get "info/about"
  resources :registrations

  root "events#index"

  resources :events do
    resources :registrations
  end
end
