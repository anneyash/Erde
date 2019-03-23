Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)

  resources :visa_applications do
    collection do
      get 'finished_form'
    end
  end
  resources :questions

  resources :users


  get 'landing', to:'layouts#landing'
  get 'choose_country', to:'layouts#choose_country'
  get 'country_page', to:'layouts#country_page'
  get 'account', to:'layouts#account'

  root to: "layouts#choose_country"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
