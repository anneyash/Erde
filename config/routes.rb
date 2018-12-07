Rails.application.routes.draw do
  resources :visa_app_ones do
    member do
      get 'step_2', action: 'step_2'
      get 'step_3', action: 'step_3'
      patch 'update_step_2', action: 'update_step_2'
    end
  end

  resources :navbars
  resources :landings
  resources :visa_applications
  resources :visas
  resources :answers
  resources :questions
  resources :personal_informations
  resources :documents
  resources :countries
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
