Flix::Application.routes.draw do



  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end
  get "info/contact"
  get "info/about"
  get "info/landing"


  root "info#landing"

  resources :events do
     resources :registrations
  end
end
