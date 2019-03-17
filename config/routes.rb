Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  resources :visa_applications do
    collection do
      get 'finished_form'
    end
  end
  resources :questions

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
