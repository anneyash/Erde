Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :navbars
  resources :landings

  resources :visa_applications do
    
  end

  resources :visas
  resources :answers
  resources :questions
  resources :personal_informations
  resources :documents
  resources :countries
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
