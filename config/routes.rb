Flix::Application.routes.draw do


  

  # devise_for :users do 
  # get '/users/sign_out' => 'devise/sessions#destroy', 
  # 	controllers: {omniauth_callbacks: "omniauth_callbacks"}
  devise_for :users,  :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations" } do


  get "info/contact"
  get "info/about"
  get "info/landing"
  get "info/test"
  get '/users/sign_out' => 'devise/sessions#destroy'

  root "info#landing"
end

  resources :events do
     resources :registrations
  end
end
