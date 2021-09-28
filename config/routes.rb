Rails.application.routes.draw do
  devise_for :users
  get '/email/:id/', to: "email#index", as: "email"
  post '/email/:id/', to: "email#send_mail", as: "send_email"

  resources :patients
  #get 'doctors/index'
  #get 'doctors/show'
  #get 'doctors/new'
  #get 'doctors/edit'
  #get 'doctors/create'
  #get 'doctors/update'
  #get 'doctors/destroy'
  # get 'home/index'
  # get '/', to: 'home#index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :doctors
  
  #get '/doctors/', to: 'doctors#index', as: 'doctors'
  #get '/doctors/new/', to: 'doctors#new', as: 'new_doctor'
  #get '/doctors/:id/', to: 'doctors#show', as: 'doctor'
  #get '/doctors/:id/edit', to: 'doctors#edit', as: 'edit_doctor'
  #patch '/doctors/:id', to: 'doctors#update'
  #post '/doctors/', to: 'doctors#create'
  #delete '/doctors/:id', to: 'doctors#destroy'
end
